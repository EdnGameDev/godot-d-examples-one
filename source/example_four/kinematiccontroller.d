module gdeo.examplefour.kinematiccontroller;

import godot;
import godot.node;
import godot.kinematicbody;
import godot.inputevent;
import godot.inputeventkey;
import godot.core.vector3;

import std.conv;

class KinematicController : GodotScript!Node
{
    @Method @Rename("_ready")
    void ready()
    {
        owner.set_process(true);
        movement = Vector3(0, 0, 0);
        moveDirection = Vector3(0, 0, 0);
        moveSpeed = 100.0;
        kinematicBody = cast(KinematicBody) owner.get_node("../../KinematicBody");
    }

    @Method @Rename("_process")
    void process(float deltaTime)
    {
        handleMovement(deltaTime);
        resetAtttributes();
    }

    private void handleMovement(float deltaTime)
    {
        movement.x = moveDirection.x * moveSpeed * deltaTime;
        movement.z = moveDirection.z * moveSpeed * deltaTime;
        kinematicBody.move_and_slide(movement);
    }

    public void moveForward(bool moveForward)
    {
        if(moveForward)
        {
            if(moveDirection.z != 1)
                moveDirection.z = -1;
            else
                moveDirection.z = 0;
        }
    }

    public void moveBackward(bool moveBackward)
    {
        if(moveBackward)
        {
            if(moveDirection.z != -1)
                moveDirection.z = 1;
            else
                moveDirection.z = 0;
        }
    }

    public void moveRight(bool moveRight)
    {
        if(moveRight)
        {
            if(moveDirection.x != -1)
                moveDirection.x = 1;
            else
                moveDirection.x = 0;
        }
    }

    public void moveLeft(bool moveLeft)
    {
        if(moveLeft)
        {
            if(moveDirection.x != 1)
                moveDirection.x = -1;
            else
                moveDirection.x = 0;
        }
    }

    private void resetAtttributes()
    {
        moveDirection.x = 0;
        moveDirection.y = 0;
        moveDirection.z = 0;

        movement.x = 0;
        movement.y = 0;
        movement.z = 0;
    }

    private KinematicBody kinematicBody;
    private Vector3 movement;
    private Vector3 moveDirection;

    private float moveSpeed;
}

