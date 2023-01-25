#include <QCoreApplication>
#include <QDebug>
#include "Test.h"


//template function
template<typename num1, typename  num2>
int fun(num1 a,num2 b)
{
    return a+b;
}

int main(int argc, char *argv[])
{
    //template function call
    QCoreApplication a(argc, argv);
    qInfo() <<"Add is :"<<fun(1,2.2);               //func guess the value
    qInfo() <<"Add is :"<<fun(55,true);
    qInfo() <<"Add is :"<<fun<int , float>(4,1.1);   //tell to compiler which value is pass

    //template class call
    Test<int > obj;
    qInfo() << obj.add(1,1);

    Test<QString>obj1;
    qInfo() << obj1.add("Hello"," World");

    return a.exec();
}
