/*---------- QFileInfo ----------

 * 1.temppath() -  return the absolute path of temp file/directory.
 * 2.
 *
*/

#include <QCoreApplication>
#include <QDebug>
#include <QFileInfo>
#include <QFileInfoList>
#include <QDir>
#include <QString>
#include <QDateTime>

void list(QString path)
{
    qInfo()<<"List : "<<path;

    //list this path
    QDir dir(path);
    QFileInfoList dirs = dir.entryInfoList(QDir::Dirs | QDir::NoDotAndDotDot);
    QFileInfoList files = dir.entryInfoList(QDir::Files ); //dont have dot and dot

    foreach (QFileInfo fi, dirs)
    {
        qInfo() <<fi.fileName();
    }
    foreach (QFileInfo fi,files)
    {
        qInfo() <<".....Name : "<<fi.fileName();
        qInfo() <<".....Size : "<<fi.size();
        qInfo() <<".....Created : "<<fi.birthTime();
        qInfo() <<".....Modified : "<<fi.lastModified();
    }
    foreach(QFileInfo fi, dirs)
    {
        list(fi.absoluteFilePath());
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    list(QDir ::tempPath());

    qInfo() <<"END";

    return a.exec();
}
