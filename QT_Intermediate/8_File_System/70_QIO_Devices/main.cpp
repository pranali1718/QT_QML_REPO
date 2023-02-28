/*  ----------QIO Device----------

 *it is base class of all IO devices.

*/

#include <QCoreApplication>
#include <QIODevice>
#include <QDebug>
#include <QBuffer>
#include<iostream>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QBuffer buffer;
    if(buffer.open(QIODevice::ReadWrite))
    {
        qInfo()<<"device opened";
        QByteArray data("Hello world.. ");
        for(int i = 0; i < 5; i ++)
        {
            buffer.write(data);
            //buffer.write(" \r\n ");
        }

        buffer.seek(0);
        qInfo()<<buffer.readAll();

        qInfo()<<"Closing buffer....";
        buffer.close();
    }
    else
    {
        qInfo() <<"Device isnt opened..";
    }

    qInfo()<<"Finished..";
    return a.exec();
}
