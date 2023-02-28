/*------------Reading thr Large Files

 *readAll() is not great option for reading the large files so we are going to usr read() and readline().

 */

#include <QCoreApplication>
#include <QFile>
#include <QDebug>
#include <QString>

void readLines(QFile &file)
{
    if(!file.isReadable()) return;
    file.seek(0);
    while(!file.atEnd())
    {
        qInfo() << file.readLine(); // \n
    }
}

void readChunks(QFile &file)
{
    if(!file.isReadable()) return;
    file.seek(0);
    while(!file.atEnd())
    {
        qInfo() << file.read(30);
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString filename = "text.txt"; //create this manually

    QFile file(filename);
    if(file.open(QIODevice::ReadOnly)) //reads the file can not modify it
    {
        //Read line by line
        readLines(file);

        qInfo() << "-------------------";

        //Read chunks
        readChunks(file);

        file.close();

    }
    else
    {
        qInfo() << file.errorString();
    }


    return a.exec();
}
