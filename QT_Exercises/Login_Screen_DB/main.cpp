#include <QCoreApplication>
#include <QDebug>
#include <dbmanager.h>


static const QString path = "person.db";

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    dbmanager db(path);

    if (db.isOpen())
    {
        db.createTable();   // Creates a table if it doens't exist. Otherwise, it will use existing table.
                //        db.addPerson(1,"A","AAA");
                db.addPerson(2,"B","BBB");
        //        db.addPerson(3,"C","CCC");
        //        db.addPerson(1,"A","AAA");
        db.printAllData();
        qDebug() << "End";
    }
    else
    {
        qDebug() << "Database is not open!";
    }     return a.exec();
}
