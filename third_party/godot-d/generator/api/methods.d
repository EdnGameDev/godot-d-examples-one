module api.methods;

import api.classes, api.enums, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;





class GodotMethod
{
	string name;
	string return_type;
	bool is_editor;
	bool is_noscript;
	bool is_const;
	bool is_virtual;
	bool has_varargs;
	bool is_from_script;
	GodotArgument[] arguments;
	
	void finalizeDeserialization(Asdf data)
	{
		foreach(i, ref a; arguments)
		{
			a.index = i;
			a.parent = this;
		}
	}
	
	@serializationIgnore:
	GodotClass parent;
	
	bool same(in GodotMethod other) const
	{
		return name == other.name && is_const == other.is_const;
	}
	
	string templateArgsString() const
	{
		string ret = "";
		bool first = true; // track first arg to skip comma
		foreach(i, ref a; arguments)
		{
			if(a.type.acceptImplicit)
			{
				if(first) first = false;
				else ret ~= ", ";
				ret ~= text(a.type, "Arg", i);
			}
		}
		if(has_varargs)
		{
			if(!first) ret ~= ", ";
			ret ~= "VarArgs...";
		}
		// template parens only if it actually is a template
		if(ret.length != 0) ret = text("(", ret, ")");
		return ret;
	}
	
	string argsString() const
	{
		string ret = "(";
		bool hasDefault = false;
		foreach(i, ref a; arguments)
		{
			if(i != 0) ret ~= ", ";
			if(a.type.acceptImplicit) ret ~= text(a.type.dCallParamPrefix,
				a.type, "Arg", i);
			else ret ~= text(a.type.dCallParamPrefix, a.type.escapeType);
			
			ret ~= " " ~ a.name.escapeD;
			if(a.has_default_value || hasDefault)
			{
				ret ~= " = " ~ escapeDefault(a.type, a.default_value);
			}
		}
		if(has_varargs)
		{
			if(arguments.length != 0) ret ~= ", ";
			ret ~= "VarArgs varArgs";
		}
		ret ~= ")";
		return ret;
	}
	
	string bindingStructName() const
	{
		return "_GODOT_" ~ name.escapeD;
	}
	
	string bindingStruct() const
	{
		string ret;
		
		ret ~= "\tpackage(godot) static GodotMethod!("~return_type.escapeType;
		foreach(ai, const a; arguments)
		{
			ret ~= ", " ~ a.type.escapeType;
		}
		if(has_varargs) ret ~= ", GodotVarArgs";
		ret ~= ") " ~ bindingStructName ~ ";\n";
		
		// for accessing it
		ret ~= "\tpackage(godot) alias _GODOT_methodBindInfo(string name : \""
			~ name ~ "\") = " ~ bindingStructName ~ ";\n";
		
		return ret;
	}
	
	string source() const
	{
		string ret;
		
		ret ~= "\t";
		ret ~= return_type.escapeType~" ";
		// none of the types (Classes/Core/Primitive) are pointers in D
		// Classes are reference types; the others are passed by value.
		ret ~= escapeD(name);
		
		ret ~= templateArgsString;
		ret ~= argsString;
		
		if(is_const) ret ~= " const";
		else if(name == "callv" && parent.name == "Object") ret ~= " const"; /// HACK
		ret ~= "\n\t{\n";
		
		// implementation
		if(is_virtual || has_varargs)
		{
			ret ~= "\t\tArray _GODOT_args = Array.empty_array;\n";
			foreach(const a; arguments)
			{
				ret ~= "\t\t_GODOT_args.append("~escapeD(a.name)~");\n";
			}
			
			if(has_varargs)
			{
				ret ~= "\t\tforeach(vai, VA; VarArgs)\n\t\t{\n";
				// TODO: check that VA can convert to Variant
				ret ~= "\t\t\t_GODOT_args.append(varArgs[vai]);\n";
				ret ~= "\t\t}\n";
			}
			
			ret ~= "\t\tString _GODOT_method_name = String(\""~name~"\");\n";
			
			ret ~= "\t\t";
			if(return_type != "void") ret ~= "return ";
			ret ~= "this.callv(_GODOT_method_name, _GODOT_args)";
			if(return_type != "void" && return_type != "Variant")
				ret ~= ".as!("~return_type.escapeType~")";
			ret ~= ";\n";
		} // end varargs/virtual impl
		else
		{
			ret ~= "\t\t" ~ bindingStructName ~ ".bind(\"" ~
				parent.internal_name ~ "\", \"" ~ name ~ "\");\n";
			ret ~= "\t\t";
			if(return_type != "void") ret ~= "return ";
			ret ~= "ptrcall!(" ~ return_type.escapeType ~ ")(" ~ bindingStructName
				~ ", _godot_object";
			foreach(ai, const a; arguments)
			{
				ret ~= ", "~a.name.escapeD;
			}
			ret ~= ");\n";
		} // end normal method impl
		
		ret ~= "\t}\n";
		
		return ret;
	}
}

struct GodotArgument
{
	string name;
	string type;
	bool has_default_value;
	string default_value;
	
	@serializationIgnore:
	
	size_t index;
	GodotMethod parent;
}


