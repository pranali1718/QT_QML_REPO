#ifndef CANINE_H
#define CANINE_H

#include <QObject>
#include <QDebug>

class Canine : public QObject
{
    Q_OBJECT
public:
    explicit Canine(QObject *parent = nullptr);

signals:

};

#endif // CANINE_H
