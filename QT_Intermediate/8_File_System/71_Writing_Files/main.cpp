/*--------Writing Files-------------

 * provide an interface for reading from and wrting to the file.

 */

#include <QCoreApplication>
#include<QFile>
#include<QDebug>
#include<QDateTime>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString filename = "test.txt";//this will put it in the current directory

    QFile file(filename);
    if(file.open(QIODevice::WriteOnly))
    {
        QString now = QDateTime::currentDateTime().toString();

        QByteArray data;
        data.append(now.toLocal8Bit());
        data.append(" - ");
        data.append("Hello World");

        file.write(data);
        file.close();

        qInfo() << "Wrote to the file";
    }
    else
    {
        qInfo() << file.errorString();
    }
    return a.exec();
}
