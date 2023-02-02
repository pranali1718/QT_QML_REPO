#include "cppworker.h"
#include<QDebug>
#include<QString>

cppworker::cppworker(QObject *parent)
    : QObject{parent}
{

}

void cppworker::regularmethod()
{

}

QString cppworker::regularmethodwithreturn(QString name, int age)
{
    return QString(name  +" : " + QString::number(age) + " years old");
}

void cppworker::cppslot()
{
    qInfo() <<"This is CPP slot calling Function";
}
