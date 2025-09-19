#include "justfile.h"
#include <qdebug.h>

JustFile::JustFile(QObject *parent)
    : QObject{parent}
{
    int a = 1;
    int b = 1;
    int c = 1;
    int d = 1;
    qDebug() << a;
}
