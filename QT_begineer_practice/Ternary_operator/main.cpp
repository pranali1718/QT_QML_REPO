#include <QCoreApplication>
#include <QtDebug>
#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    int age = 0;
    qInfo() <<"Enter Age : ";
    cin>>age;

    age > 18 ? qInfo()<<"You are an adult " : qInfo() <<"You are teeneager";
    return a.exec();
}
