/*-------------- QLockFile ------------------

 * QLoggingCategory :- it is class represents a category, or 'area' in the logging infrastructure.
 *
*/
#include <QCoreApplication>
#include <QLoggingCategory>


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QLoggingCategory logtest("testing");
    logtest.setEnabled(QtMsgType::QtDebugMsg,true);

    qInfo() << "Info = " << logtest.isInfoEnabled();
    qDebug() << "Debug = " << logtest.isDebugEnabled();
    qWarning() << "Warning = " << logtest.isWarningEnabled();
    qCritical() << "Critical = " << logtest.isCriticalEnabled();

    qInfo() << "This is a info message";
    qDebug() << "This is a debug message";
    qWarning() << "This is a warning message";
    qCritical() << "This is a critical message";


    return a.exec();
}
