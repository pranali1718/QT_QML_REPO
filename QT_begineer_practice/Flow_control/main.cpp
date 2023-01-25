#include <QCoreApplication>
#include <QDebug>
#include<iostream>


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //flow Control
    int age = 0;
    qInfo() <<"enter age : ";
    std:: cin >> age;

    if(age == 0) qDebug() <<"You enter wrong int";

    if(age < 18)
    {
        qInfo() <<"You are Under age";
    }

    if(age >=21)
    {
        qInfo() <<"You are adult ";
    }

    if(age > 120)
    {
        qCritical() <<"you can't be that much old";
    }

    qInfo() <<"Finished";


    return a.exec();
}
