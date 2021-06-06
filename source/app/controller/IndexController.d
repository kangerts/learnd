module app.controller.IndexController;

import hunt.framework;
import app.services.impl.TestServiceImpl;
import std;

/**
* 首页控制器
*/
public class IndexController : Controller
{
    mixin MakeController;

    @Action string index()
    {
        // auto test = new TestServiceImpl;
        // test.addUser("1", 14);
        // test.getAll();
        // writeln(test.getAll());
        JSONValue json = JSONValue();
        json["serverVersion"] = "v1.0";
        return json.toString;
    }
}
