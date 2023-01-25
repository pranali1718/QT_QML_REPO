#include <QCoreApplication>
#include <iostream>
#include <QtDebug>

using namespace std;
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    int age = 0;
    cout<<"Enter Age : ";
    cin>>age;

    switch(age)
    {
        case 0:
        qInfo()<<"You are child";
        break;

        case 16:
        qInfo()<<"You are Teenager";
        break;

        case 18:
        qInfo()<<"You can vote";
        break;

        case 21:
        qInfo()<<"You can drive";
        break;

        default:
        qInfo() <<"Do nothing";
    }

    return a.exec();
}
