#include "data_base.h"

data_base::data_base(QObject *parent)
    : QObject{parent}
{

}

QString data_base::regular_method_return(QString name, int password)
{
    return QString(name, QString::number(password));
}

