/*-----------QStorageInfo------------

 * geeting the mounted volumes.
 * volumes are nothing but the partition of harddrive.
 * we use storageInfo to check the volumes are available or not.

*/

#include <QCoreApplication>
#include <QDebug>
#include <QStorageInfo>
#include <QDir>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QStorageInfo root = QStorageInfo::root();
    qInfo() <<"ROOT PATH : "<<root.rootPath();
    QDir dir(root.rootPath());

    foreach (QFileInfo file, dir.entryInfoList(QDir::Dirs | QDir::NoDotAndDotDot))
    {
        qInfo()<<file.filePath();
    }

    qInfo()<<"-----------------------";

    foreach (QStorageInfo storage, QStorageInfo::mountedVolumes())
    {
        qInfo() << "Name: " << storage.displayName();
        qInfo() << "Type: " << storage.fileSystemType();
        qInfo() << "Total: " << storage.bytesTotal()/1000/1000 << "MB";
        qInfo() << "Available: " << storage.bytesAvailable()/1000/1000 << "MB";
        qInfo() << "Device: " << storage.device();
        qInfo() << "Root: " << storage.isRoot();
        qInfo() << "\n";
    }
    return a.exec();
}
