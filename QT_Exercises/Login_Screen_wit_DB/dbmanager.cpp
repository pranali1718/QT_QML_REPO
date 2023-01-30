#include "dbmanager.h"
#include <QtSql/QSqlDatabase>
#include <QObject>
#include <QtDebug>

DbManager::DbManager()
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
       m_db.setDatabaseName(path);

       if (!m_db.open())
       {
          qDebug() << "Error: connection with database failed";
       }
       else
       {
          qDebug() << "Database: connection ok";
       }
}

dbmanager::~dbmanager()
{
    if (m_db.isOpen())
        {
            m_db.close();
        }
} bool dbmanager::isOpen() const
{
return m_db.isOpen();
} bool dbmanager::createTable()
{     bool success = false;         QSqlQuery query;
        query.prepare("CREATE TABLE people(id INTEGER PRIMARY KEY, name TEXT);");         if (!query.exec())
        {
            qDebug() << "Couldn't create the table 'people': one might already exist.";
            success = false;
        }         return success; } bool dbmanager::addPerson(const int& id,const QString &name, const QString& password)
{
    bool success = false;         if (!name.isEmpty())
        {
            QSqlQuery queryAdd;
            queryAdd.prepare("INSERT INTO people (name) VALUES (:name)");
//            queryAdd.bindValue(":id", id);
            queryAdd.bindValue(":name", name);
            queryAdd.bindValue(":password", password);             if(queryAdd.exec())
            {
                success = true;
            }
            else
            {
                qDebug() << "add person failed: " << queryAdd.lastError();
            }
        }
        else
        {
            qDebug() << "add person failed: name cannot be empty";
        }         return success; } void dbmanager::printAllData() const
{
    qDebug() << "Persons in db:";
        QSqlQuery query("SELECT * FROM people");
        int idName = query.record().indexOf("name");
//        int idPassword = query.record().indexOf("password");
        while (query.next())
        {
            QString name = query.value(idName).toString();
            qDebug() << "===" << name;
//            QString password = query.value(idPassword).toString();
//            qDebug() << "===" << password;
        } }
