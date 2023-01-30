#ifndef DBMANAGER_H
#define DBMANAGER_H

#include <QSqlDatabase>
class dbmanager
{
    public:
        dbmanager(const QString& path);

        ~dbmanager();
        bool isOpen() const;
        bool createTable();
        bool addPerson(const int& id,const QString& name, const QString& password);
        void printAllData() const;

    private:
        QSqlDatabase m_db;
};

#endif // DBMANAGER_H
