module app;

import std.stdio;
import std.conv : to;

void main()
{
    /** 获取当前文件绝对路径 */
    string path = to!string(__FILE_FULL_PATH__);
    string* ptr_string = null;
    ptr_string = &path;
    auto aa = getFullPath(ptr_string);
    writeln(aa);
}

/** 
* 获取完整路径
*/
string getFullPath(string* path)
{
    string a = *path ~ "\t哈哈哈哈哈";
    return a;
}
