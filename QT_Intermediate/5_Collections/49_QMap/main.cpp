#include <QCoreApplication>
#include<QMap>
#include<QString>
#include<QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QMap<QString,int>age;

    age.insert("Pranali",23);
    age.insert("Dheeraj",22);
    age.insert("Farhan",24);

    qInfo() <<"key : "<< age.keys();
    qInfo() <<"Values : "<< age.values();

    qInfo() <<"Count : "<< age.count();
    qInfo() <<"1st Key : "<< age.firstKey();

    qInfo()<<"----------------------------";
    qInfo()<<"Elements in Map";
    foreach (QString key, age.keys())
    {
        qInfo() <<key <<" = "<<age[key];
    }

    return a.exec();
}
