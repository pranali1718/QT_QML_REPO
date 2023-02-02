#ifndef CPPWORKER_H
#define CPPWORKER_H

#include <QObject>

class cppworker : public QObject
{
    Q_OBJECT
public:
    explicit cppworker(QObject *parent = nullptr);

    Q_INVOKABLE void regularmethod();
    Q_INVOKABLE QString regularmethodwithreturn(QString name ,int age);

signals:
public slots:
    void cppslot();
};

#endif // CPPWORKER_H
