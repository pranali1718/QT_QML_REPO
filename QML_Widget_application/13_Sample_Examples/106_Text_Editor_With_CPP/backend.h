#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QCoreApplication>
#include <QFile>
#include <QDebug>
#include <QTextStream>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString path READ path WRITE setPath NOTIFY pathChanged)
    Q_PROPERTY(QString data READ data WRITE setdata NOTIFY dataChanged)
public:
    explicit Backend(QObject *parent = nullptr);

signals:

};

#endif // BACKEND_H
