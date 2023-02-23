#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QString>
#include <QDebug>
#include <QTimer>
#include <QVariant>
#include <QDateTime>

class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

signals:
    void notice(QVariant data);


private slots:
    void timeout();

public slots:
    void p_start();
    void p_stop();

private:
    QTimer p_timer;
    QString p_display;

};

#endif // TEST_H
