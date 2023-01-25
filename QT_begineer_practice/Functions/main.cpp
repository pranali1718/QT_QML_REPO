#include <QCoreApplication>
#include <QtDebug>

using namespace std;

//overloading
void test()
{
    qInfo() <<"Test 1";
}

void test(bool isactive)
{
    if(isactive == 0)
    {
       qInfo() <<"Active";
    }
    else
    {
        qInfo() <<"In active";
    }
}

//fucntion innstrutcure

struct laptop
{
    int price;
    int pp()
    {
        return price*1;
    }
};

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //overloading
    test();
    test(false);

    laptop obj;
    obj.price =7;

    qInfo() << "Price is : "<<obj.pp();


    return a.exec();
}
