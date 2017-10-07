module gdeo.examplefour.inputhandler;


import godot;
import godot.node;
import godot.input;

import GodotConsts = godot.globalconstants;

import gdeo.examplefour.kinematiccontroller;


class InputHandler : GodotScript!Node
{
    @Method @Rename("_ready")
    void ready()
    {
        owner.set_process_input(true);
        input = InputSingleton._GODOT_singleton();
        kinematicController = cast(KinematicController) owner.get_node("../KinematicController");
        print("Use W, A, S, D to move the red capsule!");
    }

    @Method @Rename("_process")
    void process(float deltaTime)
    {
        kinematicController.moveForward(input.is_key_pressed(GodotConsts.KEY_W));
        kinematicController.moveBackward(input.is_key_pressed(GodotConsts.KEY_S));
        kinematicController.moveLeft(input.is_key_pressed(GodotConsts.KEY_A));
        kinematicController.moveRight(input.is_key_pressed(GodotConsts.KEY_D));
    }

    private InputSingleton input;
    private KinematicController kinematicController;
}

