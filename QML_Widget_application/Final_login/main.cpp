#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QDebug>
#include<QSql>
#include<QSqlDatabase>
#include<QSqlDriver>
#include<QSqlError>
#include<QSqlQuery>
#include <QString>
#include <QObject>

#include "data_base.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    Data_Base obj;


    if(obj.connect_database())
    {
        if(obj.create_table())
        {
            obj.details_save();
        }
    }

    qmlRegisterType<Data_Base>("org.mydb", 1, 0, "Data_base");
    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
