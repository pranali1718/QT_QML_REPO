#include<QDebug>
#include<QSql>
#include<QSqlDatabase>
#include<QSqlDriver>
#include<QSqlError>
#include<QSqlQuery>
#include<QLibrary>

#include "data_base.h"

Data_Base::Data_Base(QObject *parent) : QObject{parent}
{

}

QString Data_Base::login_id(QString user_id,QString user_password)
{
    //qInfo() << "Login ID "<<user_id<<"Password"<<user_password;

    QSqlQuery qry;
    bool isOK = false;

    qry.prepare("SELECT name,password FROM login_details WHERE name = ? AND password = ?");
    qry.addBindValue(QVariant(user_id));
    qry.addBindValue(QVariant(user_password));


    if(!qry.exec())
    {
        qWarning() << "ERROR:  " << qry.lastError().text();
        //return 1;
        return QString("0");
    }
    if(qry.first())
    {
        qInfo()<<"User Found";
        login_succesfull();
        return QString("1");

    }
    else
    {
        qInfo()<<"User Not Found";
        return QString("0");
    }
    return QString("1");
}

bool Data_Base::login_succesfull()
{
    qInfo() <<"Login Succesfully";
    return true;
}

bool Data_Base::connect_database()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");

    db.setDatabaseName("/home/pranali/sqlite/DB_LOGIN/login_details.sqlite");

    if(db.open())
    {
        qInfo() <<"Connected..";

        return true;
    }
    else
    {
        qInfo() <<"not Connected...";
        return false;
    }
    return true;
}

bool Data_Base::create_table()
{

    QSqlQuery qry;

    qry.exec("DROP TABLE IF EXISTS login_details");

    if(qry.exec("CREATE table login_details(name string,password string)"))
    {
        qInfo() <<"Table Created";
        return true;
    }
    else
    {
        if(qry.exec("CREATE table IF NOT EXISTS login_details(name string,password string)"))
        {
            qInfo() <<"Table Successfully Created ";
        }
        else
        {
            qInfo() <<"Table not Successfully Created ";
            qWarning() << "ERROR: " << qry.lastError().text();
            return false;
        }
    }

    return true;
}

bool Data_Base::details_save()
{
    QSqlQuery qry;

    if(!qry.exec("INSERT INTO login_details(name,password ) values('Pranali','pranali@12')"))
        qWarning() << "ERROR: - " << qry.lastError().text();

    if(!qry.exec("INSERT INTO login_details(name,password ) values('Farhan','farhan@12')"))
        qWarning() << "ERROR: - " << qry.lastError().text();

    if(!qry.exec("INSERT INTO login_details(name,password ) values('abc','abc@12')"))
        qWarning() << "ERROR: - " << qry.lastError().text();

    if(!qry.exec("INSERT INTO login_details(name,password ) values('lmn','lmn@12')"))
        qWarning() << "ERROR: - " << qry.lastError().text();

    if(!qry.exec("INSERT INTO login_details(name,password ) values('xyz','xyz@12')"))
        qWarning() << "ERROR: - " << qry.lastError().text();

    if(!qry.exec("INSERT INTO login_details(name,password ) values('zoiuy','xasdfyz@12')"))
        qWarning() << "ERROR: - " << qry.lastError().text();
    return true;
}



