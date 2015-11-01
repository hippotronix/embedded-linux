#include <QCoreApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Hello Beaglebone Black!" << endl << endl;
    qDebug() << "Test successful!" << endl << endl;
    return a.exec();
}
