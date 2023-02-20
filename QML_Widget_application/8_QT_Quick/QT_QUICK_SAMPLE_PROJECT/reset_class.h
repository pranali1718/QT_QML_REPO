#ifndef RESET_CLASS_H
#define RESET_CLASS_H

#include <QObject>

class Reset_Class : public QObject
{
    Q_OBJECT
public:
    explicit Reset_Class(QObject *parent = nullptr);

signals:

    Q_INVOKABLE void fun_reset();
};

#endif // RESET_CLASS_H
