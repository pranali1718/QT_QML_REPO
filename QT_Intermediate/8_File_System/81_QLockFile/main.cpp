/*-------------- QLockFile ------------------

 * provide locking maechanism between processess.
 *
 *
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

    QString path = QDir::currentPath() + QDir::separator() + "text.txt";

    return a.exec();
}
