#include <QCoreApplication>
#include <QtDebug>

void fun(QString *line)
{
    qInfo()<<"Line is :"<<*line;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString *value = new QString("asdfghjklqwertyuiopqwertyuiopasdfghjkl");
    int *Data;

    qInfo() <<"Data value:"<<*value;
    qInfo() <<"Data length: "<<value->length();
    qInfo() <<"size of data:  "<<sizeof(value);
    qInfo() <<"size of *data: "<<sizeof(*value);
    qInfo() <<"int ptr : "<<sizeof (*Data);

    fun(value);

    return a.exec();
}
