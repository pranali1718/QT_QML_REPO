/*-------------- QLockFile ------------------

 * provide locking maechanism between processess.
 * prevent multiple processes from accessing concurrently the same resource.
 * QLockFile supports two use cases :-
 * 1. to protect a resource for a short-term operation.
 * 2. for long-lived protection of a resource for an indefinite amount of time.
 * currentPath :- Returns the absolute path of the application's current directory.
 * separator() :- Returns the native directory separator: "/" under Unix and "\" under Windows.
 * QFile :- provides an interface for reading from and writing to files.
 * fileName() :- Returns the name set by setFileName() or to the QFile constructors.
 * setStaleLockTime() :- Sets a lock time in miliseconds.
 * tryLock() :- attempts to create lock for file. If it return "true " file is locked.
 * unlock() :-  relase lock by delete the lock file.
 * getLockInfo :- Retrieves information about the current owner of the lock file.
*/

#include <QCoreApplication>
#include <QDebug>
#include <QLockFile>
#include <QDir>
#include <QString>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qInfo()<<"Attempting to lock file....";

    QString path = QDir::currentPath() + QDir::separator() + "test.txt";
    QFile file(path);
    QLockFile lock(file.fileName() +"l");
    lock.setStaleLockTime(15000);

    if(lock.tryLock())
    {
        qInfo() << "Putting into file...";
        if(file.open(QIODevice::WriteOnly)) {
            QByteArray data;
            data.append("Hello World");
            file.write(data);
            file.close();
            qInfo() << "Finished with file...";

        }
        qInfo() << "Unlocking file";
        lock.unlock();
    }
    else
    {
        qInfo() << "Could not lock the file!";
        qint64 pid;
        QString host;
        QString application;

        if(lock.getLockInfo(&pid,&host,&application)) {
            qInfo() << "The file is locked by:";
            qInfo() << "Pid: " << pid;
            qInfo() << "Host: " << host;
            qInfo() << "Application: " << application;

        } else {
            qInfo() << "File is locked, but we can't get the info!";
        }
    }


    return a.exec();
}
