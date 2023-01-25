#include "animal.h"

Animal::Animal(QObject *parent) : QObject(parent)
{
    qInfo() <<  this  << "Animal CLass";
}
