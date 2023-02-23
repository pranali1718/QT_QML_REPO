#include <QGuiApplication>
#include <QQmlApplicationEngine>                    //loads all the QML scenes

// C++ is an advanced topic


/*
 * we can mainly say that this the c++ application which loads the qml file
 */

//starting point of an application
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)

    //Application Attributes
    //EnableHighDpiScaling - this is for enable high visual displays
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    //Application class
    QGuiApplication app(argc, argv);

    //Application Engine - it loads the scripts and make everything functional
    QQmlApplicationEngine engine;

    //URL of the qml file whihc going to be load
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    //COnnecting some Signals and slots -  for making sure that objects and url matched
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    //loading the QML file
    engine.load(url);

    //Application entering into event loop and keeps application open
    return app.exec();
}
