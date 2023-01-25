#include <QCoreApplication>
#include <QtDebug>
#include<array>
using namespace std;

enum color
{
    red,green,blue
};


struct paramaeter
{
    int  height = 10;
    double weight=20;
    float length=30;
    color colors;
};

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //enum
    qInfo() <<"------------Enum-----------";
    color mycolorb = color:: blue;
    color mycolorr = color::red;
    qInfo() << mycolorb ;
    qInfo() << mycolorr ;
    qInfo()<<endl;

    //structure
    qInfo() <<"------------Structure-----------";
    paramaeter param;
    qInfo()<< "size of strutcure :"<<sizeof (param);

    param.colors = color ::blue;
    qInfo() << "height is: "<<param.height;
    qInfo() << "Weight is: "<<param.weight;
    qInfo() << "Lenth is: "<<param.length;
    qInfo() << "H color is: "<<param.colors;
    qInfo()<<endl;

    qInfo() <<"------------Arrays-----------";
    qInfo()<<"Array Elements are follwoing : ";
    int birds[4] {1,2,3,4};
    qInfo() << birds[0];
    qInfo() << birds[1];
    qInfo() << birds[2];
    qInfo() << birds[3];
    qInfo() <<endl;

    qInfo()<<"Array Elements using array class are follwoing : ";
    array<int,4> car{11,12,13};
    car[33]=33;
    qInfo() << car[0];
    qInfo() << car[1];
    qInfo() << car[2];
    qInfo() << car[33];

    qInfo()<<"size vs sizeof";
    qInfo() <<car.size();                   //find the size of singel element
    qInfo() <<sizeof(car);                  //finds the size of whole array

    return a.exec();
}
