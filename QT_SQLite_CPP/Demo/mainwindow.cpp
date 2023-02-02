#include "mainwindow.h"
#include "ui_mainwindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");

    db.setDatabaseName("/home/pranali/mydatabase.sqlite");
    QFileInfo checkfile("/home/pranali/mydatabase.sqlite");

    if(checkfile.isFile())
    {
        if(db.open())
           {
                qInfo()<<"[+]COnnected to database file";
           }
        else
        {
            qInfo()<<"[+]file Failed to connect";
        }
    }
}

MainWindow::~MainWindow()
{
    delete ui;
}




//    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");

//    db.setDatabaseName("/home/pranali/mydatabase.sqlite");
//    db.setUserName("name");
//    db.setPassword("");


//    if(db.open())
//    {
//        qInfo()<<"Succesfully Connected";

//        QSqlQuery query(QSqlDatabase::database("people.sqlite"));

//        query.prepare("insert into P_employee(name,password)" "values(?,?)");
//    }
//    else
//    {
//        qInfo()<< "Connection Failed";
//    }



void MainWindow::on_clear_button_clicked()
{
    ui->user_pass->setText("");
    ui->user_name->setText("");

}


void MainWindow::on_login_button_clicked()
{
    QString username,password;
    username=ui->user_name->text();
    password=ui->user_pass->text();

    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    if(!db.open())
    {
        qInfo()<<"Not Connected t database";
        return;
    }

    QSqlQuery query;
    if(query.exec("Select username, password FROM Users WHERE username=\n" + username + "And password \n " + password));

    if(query.next())
    {
        qInfo() <<"Valid username and apssword";
        QString msg = "username" +query.value(0).toString()+"\n"+
                        "password" +query.value(1).toString()+"\n";

        QMessageBox::warning(this,"Login Succesfull",msg);
       }else
        {
            qInfo() <<"Wrong username and password";
        }
}

