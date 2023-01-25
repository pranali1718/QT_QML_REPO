#ifndef MAMMEL_H
#define MAMMEL_H

#include <QObject>
#include <QDebug>
#include"animal.h"

class Mammel : public Animal
{
    Q_OBJECT
public:
    explicit Mammel(QObject *parent = nullptr);

signals:

};

#endif // MAMMEL_H
