/*-------------- Intercepting QDebug Message ------------------

 * we use this because by using this we are able to catch ANY qDebug message.
 * qInstallMessageHandler() :- message handler is a function that prints out debug messages, warnings, critical and fatal error messages.\
 * qInfo() :- Calls the message handler with the informational message
 * qDebug() :- Calls the message handler with the debug message
 * qWarning() :- Calls the message handler with the warning message
 * qCritical() :- Calls the message handler with the critical message
 * qFatal() :- Calls the message handler with the fatal message
 * QtMessageHandler :-This is a typedef for a pointer to a function
        Syntax:-  void myMessageHandler(QtMsgType, const QMessageLogContext &, const QString &);
 * QtMsgType :- This enum describes the messages that can be sent to a message handler
 * QMessageLogContext :- this class provides additional information about a log message
*/
#include <QCoreApplication>
#include <QDebug>
#include <QFile>
#include <QDateTime>
#include <QTextStream>

const QtMessageHandler QT_DEFAULT_MESSAGE_HANDLER = qInstallMessageHandler(nullptr);

void lhandler(QtMsgType type, const QMessageLogContext &context, const QString &msg) {

    QString txt;
    switch (type) {
    case QtInfoMsg:
        txt = QString("Info: %1").arg(msg);
        break;
    case QtDebugMsg:
        txt = QString("Debug: %1").arg(msg);
        break;
    case QtWarningMsg:
        txt = QString("Warning: %1").arg(msg);
        break;
    case QtCriticalMsg:
        txt = QString("Critical: %1").arg(msg);
        break;
    case QtFatalMsg:
        txt = QString("Fatal: %1").arg(msg);
        break;
    }

    QFile file("log.txt");
    if(file.open(QIODevice::Append)) {
        QTextStream ts(&file);
        ts << QDateTime::currentDateTime().toString() << " - " << txt << " file: " << context.file << " line: " << context.line << "\r\n";
        ts.flush();
        file.close();
     }

    (*QT_DEFAULT_MESSAGE_HANDLER)(type, context, msg);

}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qInstallMessageHandler(lhandler);

    qInfo() << "This is a info message";
    qDebug() << "This is a debug message";
    qWarning() << "This is a warning message";
    qCritical() << "This is a critical message";
    qFatal("THIS IS SPARTA!!!");

    return a.exec();
}
