/*---------QSetting-----------

 * 1.provides platform - independent application setting
 * 2.QSettings's API based on QVarient.
 * 3.it's supereasy to save the application settings

*/

#include <QCoreApplication>
#include <QDebug>
#include <QSettings>

void info(QSettings &settings)
{
    qInfo() << "File:" << settings.fileName();
    qInfo() << "Keys:" << settings.allKeys();
}

void save(QSettings &settings)
{
    settings.setValue("test",123);
    qInfo() << settings.status();
    qInfo() << "Saved";

}

void load(QSettings &settings)
{
    info(settings);

    qInfo() << settings.value("test").toString();
    bool ok;
    qInfo() << settings.value("test").toInt(&ok);
    if(!ok)
    {
        qInfo() << "Could not convert to int";
    }
}


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QCoreApplication::setOrganizationName("Stack");
    QCoreApplication::setOrganizationDomain("stack_Domain");
    QCoreApplication::setApplicationName("stack_applin");

    QSettings settings(QCoreApplication::organizationName(),QCoreApplication::applicationName());
    if(settings.allKeys().length() == 0)
    {
        qInfo() << "No setting...saving...";
        save(settings);
    }
    else
    {
        qInfo() << "Loading the settings...";
        load(settings);
    }

    return a.exec();
}
