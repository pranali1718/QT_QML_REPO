/******************************************************************************
 *-------------QInt------------
 *1. qInt8 - typedef for signed char. supprots 8-bit
 *2. qInt16 - typedef for signed short. supprots 16-bit
 *3. qInt32 - typedef for signed int. supprots 32-bit
 *3. qInt64 - typedef for signed long long int. supprots 64-bit
 *
 *******************************************************************************/

#include <QCoreApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qint8 value8 = 0;
    qint16 value16 = 0;
    qint32 value32 = 0;
    qint64 value64 = 0;
    qintptr valueptr = 0;

    qInfo() <<"Value8 : "<<sizeof(value8);
    qInfo() <<"Value16 : "<<sizeof(value16);
    qInfo() <<"Value32 : "<<sizeof(value32);
    qInfo() <<"Value64 : "<<sizeof(value64);
    qInfo() <<"Valueptr : "<<sizeof(valueptr);
    return a.exec();
}
