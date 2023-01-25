#include <QCoreApplication>
#include <QtDebug>
#include <QtSql/QSql>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlDriver>
//#include <QtSql/QsqlVarient>
#include <iostream>


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qInfo() <<"Inspecting Drivers ";

    foreach(QString driver, QSqlDatabase::drivers())
    {
        qInfo() <<driver;

        QSqlDatabase db = QSqlDatabase::addDatabase(driver);
        QSqlDriver *obj=db.driver();

        qInfo() <<"Transactions : "<<obj->hasFeature(QSqlDriver::Transactions);
        qInfo() <<"QuerySize : "<<obj->hasFeature(QSqlDriver::QuerySize);
        qInfo() <<"BLOB : "<<obj->hasFeature(QSqlDriver::BLOB);
        qInfo() <<"Unicode) : "<<obj->hasFeature(QSqlDriver::Unicode);
        qInfo() <<"PreparedQueries : "<<obj->hasFeature(QSqlDriver::PreparedQueries);
        qInfo() <<"NamedPlaceholders : "<<obj->hasFeature(QSqlDriver::NamedPlaceholders);
        qInfo() <<"PositionalPlaceholders : "<<obj->hasFeature(QSqlDriver::PositionalPlaceholders);
        qInfo() <<"LastInsertId : "<<obj->hasFeature(QSqlDriver::LastInsertId);
        qInfo() <<"BatchOperations : "<<obj->hasFeature(QSqlDriver::BatchOperations);
        qInfo() <<"SimpleLocking : "<<obj->hasFeature(QSqlDriver::SimpleLocking);
        qInfo() <<"LowPrecisionNumbers : "<<obj->hasFeature(QSqlDriver::LowPrecisionNumbers);
        qInfo() <<"EventNotifications : "<<obj->hasFeature(QSqlDriver::EventNotifications);
        qInfo() <<"FinishQuery : "<<obj->hasFeature(QSqlDriver::FinishQuery);
        qInfo() <<"MultipleResultSets : "<<obj->hasFeature(QSqlDriver::MultipleResultSets);

        qInfo()<<" ";
    }
    return a.exec();
}
