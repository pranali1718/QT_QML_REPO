/******************************************************************************
 *-------------QObject------------
 *1.base class of all class
 *
 *******************************************************************************/

#include <QCoreApplication>
#include <QDebug>
#include "cat.h"
#include "dog.h"

void test(QObject *obj)
{
    qInfo() <<obj;

}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    cat kitty;
    dog tanny;

    kitty.setObjectName("mini");
    tanny.setObjectName("Ruby");

    test(&kitty);
    test(&tanny);

    return a.exec();
}
