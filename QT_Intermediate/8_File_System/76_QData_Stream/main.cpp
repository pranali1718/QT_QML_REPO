/*--------QDATA STREAM-------------

 * we use this for data encoding

*/

#include <QCoreApplication>
#include <QFile>
#include <QDataStream>
#include <QDebug>

bool write(QString filename)
{
    QFile file(filename);
    if(!file.open(QIODevice::WriteOnly))
    {
        qInfo() << file.errorString();
        return false;
    }

    QDataStream stream(&file);
    stream.setVersion(QDataStream::Qt_5_15);

    int age = 25;
    QString name = "Pranali";
    double weight = 57.80;

    stream <<age<<name<<weight;
    qInfo() <<"File Written...";

    stream <<age<<name<<weight;
    if(!file.flush())
    {
        qInfo()<<file.errorString();
        file.close();
        return false;
    }

    file.close();

    return true;
}

bool read(QString filename)
{
    QFile file(filename);
    if(!file.open(QIODevice::ReadOnly))
    {
        qInfo() << file.errorString();
        return false;
    }


    QDataStream stream(&file);
    if(stream.version() != QDataStream::Qt_5_15)
    {
        qInfo() << "Wrong file version";
        file.close();
        return false;
    }

    int age;
    QString name;
    double weight;

    stream >> age;
    stream >> name;
    stream >> weight;

    file.close();

    qInfo() << "Name" << name;
    qInfo() << "Age" << age;
    qInfo() << "Weight" << weight;


    return true;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString filename = "test.txt";
    if(write(filename)) read(filename);

    return a.exec();
}
