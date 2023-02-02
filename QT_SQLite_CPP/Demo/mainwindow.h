#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include<QtSql/QSqlDatabase>
#include<QDebug>
#include<QMessageBox>
#include<QtSql/QSqlQuery>
#include <QFileInfo>
#include <QSqlResult>
#include <QDialog>


QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
     MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:

    void on_clear_button_clicked();

    void on_login_button_clicked();

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
