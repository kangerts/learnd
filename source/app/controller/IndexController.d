module app.controller.IndexController;
import std.stdio : writeln;

import hunt.framework;

class IndexController : Controller
{
    mixin MakeController;

    @Action
    string index()
    {
        // set hunt-framework version to view
        view.assign("version", HUNT_VERSION);
        writeln("访问首页");
        return view.render("index");
    }
}
