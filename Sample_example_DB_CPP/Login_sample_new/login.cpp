#include "login.h"
#include "ui_login.h"

Login::Login(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::Login)
{
    ui->setupUi(this);

    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("home/linux");

    if(!db.open())
    {
        ui->label->setText("Failed to Opened");
    }
    else
    {
        ui->label->setText("COnnected...");
    }
}

Login::~Login()
{
    delete ui;
}

