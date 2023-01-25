#include <QCoreApplication>
#include<QtDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qInfo() << "Hello World";
    qInfo("hello Again");

    //Intro to varibale
    bool p = true;
    qInfo() <<"Is on" <<p;

    //data Types
    int age =10;
    double height =7.09;

    qInfo() <<"Age is :  "<<age;
    qInfo() <<"height is : "<<height;
    age=30;
    qInfo() <<"Age is :  "<<age;
    signed cat = -1;
    qInfo() <<"Cat is  :"<<cat;

    //size of the data types
    qInfo() <<sizeof (age);
    qInfo() <<sizeof (height);
    qInfo() <<sizeof (cat);

    //constant Variables
    int weight  =20;
    const int breadth = 50;
    qInfo() <<"weight is  :"<<weight;               //can be change
    qInfo() <<"Breadth is : "<<breadth;             //can't be change

    qInfo() <<"Weight and breadth is  :"<<weight<<"  " <<breadth;
    weight =10;
   // breadth =10;
    qInfo() <<"Weight and breadth is  :"<<weight<<"  " <<breadth;

    return a.exec();
}






