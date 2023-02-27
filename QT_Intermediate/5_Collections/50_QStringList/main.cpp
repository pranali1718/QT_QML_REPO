/*     -------QStringList-------

 * 1.It is better than QList<QString>.
 * 2.It inherits from QList<QString>
 * 3.This class provide list of strings.
 * 4.Fast insertions and removals.
 * 5.Passing sting list as parameters.
 * 6.All QList functionalities are also apply to QStringList.
 * 7.isEmpty(), append(), insert(), remove(), removewAt(), removeFirst(), removeOne().
 * 8.join()- join the strings.
 * 9.break()- break the strings.

*/

#include <QCoreApplication>
#include <QStringList>
#include<QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QStringList people {"Dipika" };

    people <<"Siddhharth" << "Kartik";

    //appending the QStringList.
    people.append("Manasi");
    people.append("Abdu");

    //checking the QStringList.
    qInfo()<<"String is Empty ? "<<people.isEmpty();

    //replacing a single char
    people.QStringList::replaceInStrings("a", "@");

    //sorting list
    people.sort();
    qInfo()<<"StringList is : "<<people;

    //joining the string
    QString names = people.join(" ,");
    qInfo() <<"String is: "<<names;

    //filtering the list
    QStringList mylist = people.filter("r");
    qInfo()<<"Filter 'r' : "<<mylist;

    QString my = "Siddhh@rth";
    qInfo()<<"Contains : "<<people.contains(my);
    qInfo() <<"at Index : "<<people.indexOf(my);
    qInfo() << "Value:" << people.at(people.indexOf(my));


    return a.exec();
}
