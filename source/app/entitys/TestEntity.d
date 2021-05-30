module app.entitys.TestEntity;

import hunt.framework;
import std.array;

/**
* 测试表
*/
@Table("test")
class TestEntity : Model
{
    mixin MakeModel;

    /**
    * 用户ID
    */
    @AutoIncrement @PrimaryKey int id;
    /**
    * 用户名称
    */
    string username;
    /**
    * 用户年龄
    */
    uint age;
}
