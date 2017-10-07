module gdeo.exampleone.lifecycle;

import godot;
import godot.node;


public class LifeCycle : GodotScript!Node
{
    @Method @Rename("_enter_tree")
    public void enterTree()
    {
        print("LifeCycle.enterTree(): LifeCycle enters in the SceneTree!");
    }

    @Method @Rename("_ready")
    public void ready()
    {
        print("LifeCycle.enterTree(): LifeCycle is ready!");
        owner.set_process(true);
    }

    @Method @Rename("_process")
    public void process(float deltaTime)
    {
        print("LifeCycle.process(): LifeCycle loop method that process content of each frame!");
    }

    @Method @Rename("_exit_tree")
    public void exitTree()
    {
        print("LifeCycle.enterTree(): LifeCycle exit the SceneTree");
    }
}
