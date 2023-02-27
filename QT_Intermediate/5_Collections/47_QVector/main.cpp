/*     Using Vector in QT     */

#include <QCoreApplication>
#include <QVector>
#include <QDebug>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QVector<int>v;

    v << 1<< 2<< 3;
    qInfo() <<v;

    qInfo()<<"Vector ele is: ";
    foreach (int i, v)
    {
        qInfo() <<i;
    }
    return a.exec();
}
