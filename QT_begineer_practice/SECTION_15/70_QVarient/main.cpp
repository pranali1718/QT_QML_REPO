#include <QCoreApplication>
#include <QtDebug>
#include <QVariant>

void test(QVariant value)
{
    qInfo() <<value;

    int tes = 0;
    bool ok = false;                //false = 0

    tes = value.toInt(&ok);

    if(ok)
    {
        qInfo()<<"Int : "<<tes;
    }
    else
    {
        qInfo() <<"Not a Number";
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QVariant value_1 =1;
    QVariant value_2 = "hellow world";

    test(value_1);
    return a.exec();
}
