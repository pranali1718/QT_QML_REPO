#ifndef DATA_BASE_H
#define DATA_BASE_H

#include <QObject>

class data_base : public QObject
{
    Q_OBJECT
public:
    explicit data_base(QObject *parent = nullptr);


    Q_INVOKABLE void login();
    Q_INVOKABLE QString Login_data(QString name, QString password);

signals:

};

#endif // DATA_BASE_H
