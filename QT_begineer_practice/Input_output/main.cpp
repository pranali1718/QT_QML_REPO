#include <QCoreApplication>
#include<QDebug>
#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //cout
    qInfo() <<"------------------using Cout---------------";
    cout<<"Hello "<<endl;
    cout<<"world"<<endl;
    qInfo() <<"Hieee";

    //cin
    qInfo() <<"------------------using cin---------------";
    int age;
    qInfo() <<"Enter age : ";
    cin >> age;
    qInfo() <<"age is :"<<age;

    //cerr
    qInfo() <<"------------------using cerr---------------";
    cerr << "Pranali Mahale";

    //QDebug Vs cout
    cout<<endl;
    qInfo() <<"-------------------------------------------";
    qInfo() <<"Qinfo";
    qDebug() <<"Qdebug";
    qCritical() <<"SOmething Crititcal";
    qFatal("Crash :::::") ;
    return a.exec();
}
