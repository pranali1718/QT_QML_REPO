#ifndef CAR_H
#define CAR_H

#include <QObject>

class car : public QObject
{
    Q_OBJECT
public:
    explicit car(QObject *parent = nullptr);

signals:

};

#endif // CAR_H
