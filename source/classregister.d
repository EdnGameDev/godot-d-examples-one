module gdeo.classregister;


import godot;
import godot.c;

import gdeo.all;

import std.stdio;


mixin GodotNativeInit!
(
    MainScreenController,
    ReturnController,

    LifeCycle,
    InputHandling,
    GameObjectFactory,
    KinematicController,
    InputHandler,
	(godot_gdnative_init_options* opt)
	{
		writeln("GodotNativeInit func: Register D classes");
		writeln("Godot is in ", opt.in_editor ? "EDITOR" : "GAME", " mode.");
	}
);

mixin GodotNativeTerminate!
(
	(){writeln("GodotNativeTerminate func: Unregister D classes");}
);


