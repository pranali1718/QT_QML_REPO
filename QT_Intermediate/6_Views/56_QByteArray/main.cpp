/*-------------QByteArray--------------

 * 1.we use this for give read only access to QByteArray.
 * 2.

 */

#include <QCoreApplication>
#include <QByteArray>
#include <QByteArrayView>

void display(QByteArrayView &view)
{
    qInfo() <<"String is : "<<view;
    qInfo() <<"at 2nd position is : "<<view.at(2);
    qInfo() <<"Size is : "<<view.size();
    qInfo() <<"Sliced : "<<view.sliced(3,8);
    qInfo() <<"COntians : "<<view.contains("Pranali");
    qInfo() <<"index of Pranali : "<<view.indexOf("Pranali");

    for(auto c : view)
    {
        qInfo() << c;
    }
}


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QByteArray bytes("Hello I am Pranali Mahale");
    QByteArrayView view(bytes);

    display(view);
    return a.exec();
}
