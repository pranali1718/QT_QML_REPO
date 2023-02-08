#include "data_base.h"
#include <QDebug>


data_base::data_base(QObject *parent)
    : QObject{parent}
{

}

void data_base::login()
{
    qInfo() <<"Login Succesfully";
}

QString data_base::Login_data(QString name, QString password)
{
    return QString(name);
}
