module gdeo.returncontroller;


import godot;
import godot.node;
import godot.inputevent;
import godot.inputeventkey;


import GodotConsts = godot.globalconstants;


class ReturnController : GodotScript!Node
{
    @Method @Rename("_ready")
    void ready()
    {
        owner.set_process_input(true);
    }

    @Method @Rename("_input")
    void input(InputEvent event)
    {
        if(InputEventKey eventKey = cast(InputEventKey)event)
        {
            if(eventKey.is_pressed() && eventKey.get_scancode() == GodotConsts.KEY_ESCAPE)
                owner.get_tree().change_scene("res://scene/main_scene.tscn");
        }
    }
}

