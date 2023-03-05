/* --------QDir---------

 * 1. QDir - use to manipulate path names, acess information regarding paths and files and manipulate it in the system.
 * 2. absolutePath() - a path which start with '/' or with a drive specifications.
 * 3. absoluteFilePath() - return absolute path and name of the file in the directory. Doesn't check the file is exist or not.
 * 4. applicationDirPath() - return  the directory which contains executables(returns the whole path which has the executable).
 * 5. cdUp() - changes the directory by moving one directory up.
 * 6. entryInfoList() - return all the files and directories in the directory.
 * 7. mkdir -  create the subdirectory.
 * 8. QFileInfo - provide the system indepndent infomration that means the name , path ,its accessess. File size, last modified/read times are also available.

*/

#include <QCoreApplication>
#include <QDir>
#include <QFileInfo>
#include <QFileInfoList>
#include <QDebug>

void list(QDir &root)
{
    qInfo()  << "---Listing---";
    foreach(QFileInfo fi, root.entryInfoList(QDir::Filter::Dirs,QDir::Name))
    {
        if(fi.isDir())
        {
            qInfo() << fi.absoluteFilePath();
        }
    }
}


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QDir dir(QCoreApplication::applicationDirPath());
    qInfo()<<dir.absolutePath();

    dir.cdUp();
    qInfo()<<dir.absolutePath();

    //for print all the directories
    list(dir);
    dir.mkdir("test");

    return a.exec();
}
