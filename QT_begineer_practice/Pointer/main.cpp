#include <QCoreApplication>
#include <QDebug>

void fun(QString name)
{
    qInfo() <<"Name is :"<<name;
    qInfo() <<"Lenght is : "<<name.length();
}

void fun_ptr(QString *name)
{
    qInfo() <<"Name is :"<<*name;
    qInfo() <<"Lenght is : "<<name->length();
}

void fun_heap(QString *value)
{
    qInfo() <<"-------------Heap--------------";
    qInfo() <<"Value is:"<<*value;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //normal stack
    QString name="Pranali";
    fun(name);
    fun_ptr(&name);

    //pointer on heap
    QString *value = new QString ("Mahale");
    fun_heap(value);
    qInfo() <<"Lengh of Value is :"<< value->length();
    delete value;

    return a.exec();
}
