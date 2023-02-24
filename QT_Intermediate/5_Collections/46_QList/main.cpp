/* using list in QT
 *
 *
*/

#include <QCoreApplication>
#include <QList>
#include <iostream>
#include <QDebug>
#include <QString>


using namespace  std;
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    //declare list of string
    QList<QString>list_string;
    list_string <<"One" <<"Two" <<"Three" <<"Four";

    foreach(auto &x,list_string)
    {
        qInfo()<<x;
    }

    cout<<endl;

    list_string.append("Five");
    foreach(auto &x,list_string)
    {
        qInfo()<<x;
    }

    cout<<endl;

    //declare list of integer
    QList<int>list_num;
    list_num <<1<<2<<3<<4<<5;

    //for appent ele to list
    //    for(int i=0;i<3;i++)
    //    {
    //        list_num.append(i);
    //    }
    qInfo()<<list_num;


    cout<<"---------------------------------"<<endl;

    //print the length of list
    cout<<"size of the list : "<<endl;
    qInfo()<<list_num.size();
    qInfo()<<list_num.count();
    qInfo()<<list_num.length();
    cout<<"---------------------------------"<<endl;

    list_num<<11<<111<<1111;
    list_num.removeLast();

    cout<<"ELe in list :"<<endl;
    foreach (int i, list_num)
    {
        qInfo() <<i;
    }

    cout<<endl<<endl;

    //    QList<int> slice  = list_num.slice(2,3);

    //    qInfo() <<"SLice : "<<slice <<endl;
    //    qInfo() <<"list_num : "<< list_num<<endl;

    qInfo() <<"contains : "<< list_num.contains(2);
    qInfo() <<"Index of 2 is : "<<list_num.indexOf(2) ;

    list_num.clear();
    qInfo() <<"size : "<<list_num.size();
    //    qInfo() <<"length : "<<list_num.length() <<endl;
    //    qInfo() <<"count : "<<list_num.count() <<endl;

    return a.exec();
}
