module gdeo.exampletwo.inputhandling;

import godot;
import godot.core.string;
import godot.node;
import godot.richtextlabel;

import godot.inputevent;
import godot.inputeventkey;
import godot.inputeventjoypadbutton;

import GodotConsts = godot.globalconstants;

import std.conv;


class InputHandling : GodotScript!Node
{
    @Method
    void _ready()
    {
        owner.set_process_input(true);
        messagesRTL = cast(RichTextLabel) owner.get_node("../Panel/MessagesRTL");
        messagesRTL.set_bbcode("Press key board keys or joystick buttons: \n\n");
    }

    @Method @Rename("_input")
    void input(InputEvent event)
    {
        if(InputEventKey eventKey = cast(InputEventKey)event)
        {
            if(eventKey.is_pressed())
            {
                String text = text("Pressed keyboard key: ", eventKey.get_scancode(), "\n");
                messagesRTL.add_text(text);
            }

            return;
        }

        if(InputEventJoypadButton eventJoyButton = cast(InputEventJoypadButton)event)
        {
            if(eventJoyButton.is_pressed())
            {
                String text = text("Pressed joypad button: ", eventJoyButton.get_button_index(), "\n");
                messagesRTL.add_text(text);
            }
        }
    }

    private RichTextLabel messagesRTL;
}