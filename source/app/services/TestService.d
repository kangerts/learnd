module app.services.TestService;

import hunt.framework;
import app.entitys.TestEntity;

interface TestService
{
    TestEntity[] getAll();

    string addUser(string name, uint age);
}
