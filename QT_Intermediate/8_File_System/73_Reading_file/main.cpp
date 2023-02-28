/*----------Reading File----------

 * learn to read the file

*/

#include <QCoreApplication>
#include <QString>
#include <QDebug>
#include <QFile>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString filename =  "text.txt";
    QFile file(filename);

    qInfo()<<"File Exist"<<file.exists();

    if(file.open(QIODevice::ReadOnly))
    {
        qInfo()<<""<<file.readAll();
        file.close();
    }
    else
    {
        qInfo() << file.errorString();
    }

    return a.exec();
}
