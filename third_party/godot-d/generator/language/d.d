module language.d;

import api.util;
import api.classes, api.methods;

import language;

import std.algorithm.iteration;
import std.range;
import std.path;
import std.conv : text;
import std.string;

Language getDLanguage()
{
	Language ret;
	ret.classOutputFiles = [
		Language.ClassOutputFile(&generateClass),
		Language.ClassOutputFile(&generateGlobalConstants),
		Language.ClassOutputFile(&generatePackage)
	];
	return ret;
}





private:

/// classify some rarely-useful classes into a separate package
bool isMiscClass(in GodotClass c)
{
	import std.algorithm : startsWith;
	if(c.name.startsWith("VisualScript")) return true;
	
	return false;
}

string[2] generatePackage(in GodotClass c)
{
	if(c.name == "GlobalConstants") return [null, null];
	
	if(c.descendant_ptrs.length == 0) return [null, null];
	
	string folder = c.isMiscClass?"miscclasses":"classes";
	string filename = buildPath(folder, "godot", c.name.toLower, "all.d");
	string ret;
	
	ret ~= "module godot.";
	ret ~= c.name.toLower;
	ret ~= ".all;\n\n";
	
	ret ~= "public import\n\tgodot."~c.name.toLower;
	
	const(GodotClass)[] recursiveDescendants;
	void addDescendant(in GodotClass d)
	{
		import std.algorithm.searching;
		if(isMiscClass(d) && !isMiscClass(c)) return;
		if(!recursiveDescendants[].canFind(d)) recursiveDescendants ~= d;
		foreach(rd; d.descendant_ptrs[]) addDescendant(rd);
	}
	foreach(d; c.descendant_ptrs[]) addDescendant(d);
	
	foreach(di, d; recursiveDescendants[])
	{
		ret ~= ",\n\tgodot."~d.name.toLower;
	}
	ret ~= ";\n";
	
	string[2] arr = [filename, ret];
	return arr;
}


string[2] generateClass(in GodotClass c)
{
	if(c.name == "GlobalConstants") return [null, null];
	
	string folder = c.isMiscClass?"miscclasses":"classes";
	string filename = (c.descendant_ptrs.length == 0) ?
		buildPath(folder, "godot", c.name.toLower~".d") :
		buildPath(folder, "godot", c.name.toLower, "package.d");
	string ret;
	
	// module names should be all lowercase in D
	// https://dlang.org/dstyle.html
	ret ~= "module godot.";
	ret ~= c.name.toLower;
	ret ~= ";\n";
	ret ~= "import std.meta : AliasSeq, staticIndexOf;\n";
	ret ~= "import std.traits : Unqual;\n";
	ret ~= "import godot.d.meta;\nimport godot.core;\nimport godot.c;\n";
	ret ~= "import godot.d.bind;\n";
	if(c.name != "Object") ret ~= "import godot.object;\n";
	
	if(c.instanciable)
	{
		ret ~= "import godot.classdb;\n";
	}
	
	foreach(const u; c.used_classes)
	{
		ret ~= "import godot.";
		ret ~= u.toLower;
		ret ~= ";\n";
	}
	
	string nameAlias = "this";
	string className = c.name.escapeType;
	if(c.singleton) className ~= "Singleton";
	
	ret ~= c.source;
	
	string[2] arr = [filename, ret];
	return arr;
}

string[2] generateGlobalConstants(in GodotClass c)
{
	import std.conv : text;
	import std.string;
	import std.meta;
	import std.algorithm.iteration, std.algorithm.searching, std.algorithm.sorting;
	import std.range : array;
	
	if(c.name != "GlobalConstants") return [null, null];
	
	string filename = buildPath("classes", "godot", "globalconstants.d");
	string ret;
	
	ret ~= "module godot.globalconstants;\n";
	
	foreach(const string name, const int value; c.constants)
	{
		ret ~= "enum int "~name.escapeD~" = "~text(value)~";\n";
	}
	
	/// Try to put at least some of these in grouped enums
	static struct Group
	{
		string name; /// The name of the new enum
		string prefix; /// The prefix to strip from original name
	}
	
	alias groups = AliasSeq!(
		Group("Key", "KEY_"),
		Group("Button", "BUTTON_"),
		Group("PropertyHint", "PROPERTY_HINT_"),
		Group("PropertyUsage", "PROPERTY_USAGE_"),
		Group("Type", "TYPE_")
	);
	
	foreach(g; groups)
	{
		ret ~= "enum "~g.name~" : int\n{\n";
		
		foreach(const string name; c.constants.keys[].filter!(k => k.startsWith(g.prefix))
			.array.sort!((a,b) => c.constants[a] < c.constants[b]))
		{
			/// FIXME: should these be camelCase rather than snake_case?
			ret ~= "\t" ~ name[g.prefix.length..$].toLower.escapeD
				~ " = " ~ text(c.constants[name]) ~ ",\n";
		}
		
		ret ~= "}\n";
	}
	
	string[2] arr = [filename, ret];
	return arr;
}

 
