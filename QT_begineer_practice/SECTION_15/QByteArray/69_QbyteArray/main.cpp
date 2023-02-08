/**************************************************************************
 * --------------------QByteArray------------------
 *
 * 1.it provides an array of objects.
 * 2.it is more convinient than const char *.
 * 3.toLatin1() - use to return the string as QByteArray
 * 4.rightJustified() -  use to fill byte follwed by this byte array
 * 5.at() -  goes to specific position
 * 6.
 *
 **************************************************************************/

#include <QCoreApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString greeting ="Hellow World";
    QByteArray buffer(greeting.toLatin1());                            //use to print
    buffer.append("!");                                               //use to append

    qInfo() << buffer;

    qInfo() << buffer.rightJustified(40,'.');                           //tooks buffer to right and fill the other party with '.'

    qInfo() << buffer.at(buffer.length() - 1 );                         //prints the postition at length -1

    qInfo() << buffer.back();                                           //prints the back of the buffer
    qInfo() << buffer.begin();                                          //prints the front part of the buffer
    qInfo() << buffer.capacity();                                       //Prints the maximum capacity of buffer
    qInfo() << buffer.data();                                           //prints the data contain in buffer

    QString modified(buffer);                                       //changes buffer to modified
    qInfo() << modified;
    return a.exec();
}
