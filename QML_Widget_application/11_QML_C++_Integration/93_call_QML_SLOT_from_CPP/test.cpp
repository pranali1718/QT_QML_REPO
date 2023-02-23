#include "test.h"

Test::Test(QObject *parent)
    : QObject{parent}
{
    connect(&p_timer, &QTimer::timeout,this, &Test::timeout);
    p_timer.setInterval(1000);
    p_display = "Starting";
    qInfo() << p_display;
    emit notice(QVariant(p_display));
}


void Test::timeout()
{
    p_display = QDateTime::currentDateTime().toString();
    qInfo() << p_display;
    emit notice(QVariant(p_display));
}

void Test::p_start()
{
    p_display ="Starting ...";
    qInfo() << p_display;
    emit notice(QVariant(p_display));
    p_timer.start();
}

void Test::p_stop()
{
    p_display ="Stopped";
    qInfo() << p_display;
    emit notice(QVariant(p_display));
    p_timer.start();
}
