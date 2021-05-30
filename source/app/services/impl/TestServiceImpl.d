module app.services.impl.TestServiceImpl;

import hunt.framework;
import app.services.TestService;
import app.entitys.TestEntity;

import app.respoistorys.TestRespoistory;

/**
* test服务接口实现
*/
class TestServiceImpl : TestService
{
    override TestEntity[] getAll()
    {
        auto repository = new TestRespoistory;
        TestEntity[] test = repository.findAll();
        return test;
    }

    override string addUser(string name, uint age)
    {
        auto repository = new TestRespoistory;
        TestEntity test = new TestEntity;
        test.username = name;
        test.age = age;
        repository.save(test);
        return "test add";
    }
}
