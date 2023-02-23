#include "test.h"

Test::Test(QObject *parent)
    : QObject{parent}
{

}

int Test::number()
{
    qInfo()<<"Called Number";
    return 31;
}

void Test::bark()
{
    qInfo()<<"Bark Bark Bark";
}
