/*-------------Navigating Directories Recursively-----------

 * use to list all the files and folders.

*/

#include <QCoreApplication>
#include <QDir>
#include <QDebug>
#include <QFile>
#include <iostream>

void list(QDir &dir)
{
    qInfo()<<"Listing......";
    foreach (QFileInfo file, dir.entryInfoList(QDir::AllEntries | QDir::NoDotAndDotDot,QDir::Name))
    {
        if(file.isDir()) qInfo() << "Directory : " << file.filePath();
        if(file.isFile()) qInfo() << "File" << file.filePath();

        if(file.isDir())
        {
            QDir child(file.filePath());
            qInfo() <<"INSPECTING....."<<child.absolutePath();
            list(child);
        }
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QDir dir(QCoreApplication::applicationDirPath());
    dir.cdUp();
    list(dir);

    return a.exec();
}
