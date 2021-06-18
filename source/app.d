module app;

import std.stdio;
import std.conv : to;
import std.outbuffer : OutBuffer;
import std.file : write, readText;
import std.json : JSONValue, toJSON;
import std.path : absolutePath, dirSeparator;

void main()
{
    /** 获取当前文件绝对路径 */
    string path = to!string(__FILE_FULL_PATH__);
    string* ptr_string = null;
    ptr_string = &path;
    auto aa = getFullPath(ptr_string);
    writeln(aa);

    string filePath = absolutePath("build") ~ dirSeparator ~ "test.txt";
    // 写文件
    OutBuffer outBuffer = new OutBuffer();
    outBuffer.writefln("kdakdkakdadkcmkm\n\n");
    outBuffer.write("1111111caacaca");
    write(filePath, outBuffer.toBytes());

    // 读文件
    writeln(readText(filePath));

    // 写json数据到文件
    JSONValue js = JSONValue();
    js["userName"] = "kangert";
    js["age"] = 18;
    writeln(js.toString());

    OutBuffer buf = new OutBuffer();
    buf.write(js.toString());
    write(filePath, buf.toBytes());
}

/** 
* 获取完整路径
*/
string getFullPath(string* path)
{
    string a = *path ~ "\t哈哈哈哈哈";
    return a;
}
