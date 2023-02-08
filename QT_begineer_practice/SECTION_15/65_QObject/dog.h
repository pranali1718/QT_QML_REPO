#ifndef DOG_H
#define DOG_H

#include <QObject>

class dog : public QObject
{
    Q_OBJECT
public:
    explicit dog(QObject *parent = nullptr);

signals:

};

#endif // DOG_H
