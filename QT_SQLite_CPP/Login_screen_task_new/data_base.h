#ifndef DATA_BASE_H
#define DATA_BASE_H

#include <QObject>

class data_base : public QObject
{
    Q_OBJECT
public:
    explicit data_base(QObject *parent = nullptr);

    Q_INVOKABLE QString regular_method_return(QString name, int password);

signals:

};

#endif // DATA_BASE_H
