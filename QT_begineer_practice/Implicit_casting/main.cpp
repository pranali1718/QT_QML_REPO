/******************************************************************************
1.implicit conversion should not be trusted
2.so we should use inplicit casting
3.implicit menas typecast
******************************************************************************/

#include <QCoreApplication>
#include<QDebug>
#include<iostream>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);


    double value = 43.90;
    qInfo() <<"Value is: "<< value;

    int num = value;
    qInfo() <<"Num is :" <<num;                             //implicit conversion (which means double to integer)

    num = (int)value;
    qInfo() <<"Num is :" <<num;
    return a.exec();
}
