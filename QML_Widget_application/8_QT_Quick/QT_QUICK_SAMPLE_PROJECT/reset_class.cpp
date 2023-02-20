#include "reset_class.h"
#include <QDebug>
#include <QLibrary>
#include <QObject>



Reset_Class::Reset_Class(QObject *parent)
    : QObject{parent}
{

}

void Reset_Class::fun_reset()
{

    qInfo() << "\033c";

}
