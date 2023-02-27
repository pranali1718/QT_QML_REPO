//read only access to a string

#include <QCoreApplication>
#include <QString>
#include <QDebug>

void display(QStringView &view )
{
    qInfo() <<"String is : "<<view;
    qInfo() <<"Size is : "<<view.size();
    qInfo() <<"at 9th position is : "<<view.at(9);
    qInfo() <<"Contians : "<<view.contains(QString("Pranali"));
    qInfo() <<"index of Pranali : "<<view.indexOf('P');

    //    for(auto c : view)
    //    {
    //        qInfo() << c;
    //    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString data = "Hi this side Pranali Mahale";
    QStringView  view(data);

    display(view);

    return a.exec();
}
