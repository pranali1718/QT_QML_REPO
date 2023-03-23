#ifndef LOGGER_H
#define LOGGER_H

#include <QObject>
#include <QCoreApplication>
#include <QDebug>
#include <QFile>
#include <QDateTime>
#include <QTextStream>
#include <iostream>
#include <QDir>

class Logger : public QObject
{
    Q_OBJECT
public:
    explicit Logger(QObject *parent = nullptr);

    static bool logging;
    static QString filename;
    static void attach();
    static void handler(QtMsgType type, const QMessageLogContext &context, const QString & msg);

signals:

};

#endif // LOGGER_H
