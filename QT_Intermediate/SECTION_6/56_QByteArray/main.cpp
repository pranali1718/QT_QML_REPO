/*
 *QByteArray
 *
 * 1.we use this for give read only access to QByteArray.
 * 2.
 *
 */

#include <QCoreApplication>
#include <QByteArray>
#include <QByteArrayView>

void display(QByteArrayView &view)
{
    qInfo() <<view;
}


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QByteArray bytes("Hello I am Pranali Mahale");
    QByteArrayView view(bytes);

    display(view);
    return a.exec();
}
