#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QCoreApplication>
#include <QDebug>
#include <QFile>
#include <QDateTime>
#include <iostream>
#include <QTextStream>
#include <QDir>

class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);
    void testing();
signals:

};

#endif // TEST_H
