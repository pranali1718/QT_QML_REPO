#include <QCoreApplication>
#include"animal.h"
#include"canine.h"
#include"mammel.h"
#include"feline.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Animal test;


    return a.exec();
}
