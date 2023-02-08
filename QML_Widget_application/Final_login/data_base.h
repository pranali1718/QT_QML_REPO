#ifndef DATA_BASE_H
#define DATA_BASE_H

#include <QObject>

class Data_Base : public QObject
{
    Q_OBJECT
public:
    explicit Data_Base(QObject *parent = nullptr);

    Q_INVOKABLE QString login_id(QString user_id,QString user_password);

    Q_INVOKABLE bool login_succesfull();

    // Q_INVOKABLE QString search(QString p_name);

    bool connect_database();
    bool create_table();
    bool details_save();

signals:

};

#endif // DATA_BASE_H
