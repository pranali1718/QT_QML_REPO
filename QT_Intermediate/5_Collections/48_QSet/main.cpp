#include <QCoreApplication>
#include <QString>
#include <QDebug>
#include <QSet>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QSet<QString> people;
    people<<"Pranali" <<"Farhan" <<"Dheeraj";
    people.insert("Mahadev");

    foreach(QString p,people)
    {
        qInfo()<<p;
    }

    qInfo()<<"People Contains Pranali ?" <<people.contains("Pranali");
    return a.exec();
}
