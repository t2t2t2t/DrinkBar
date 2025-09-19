#include "testqml.h"
#include <QTimer>
#include <qdebug.h>

TestQml::TestQml(QObject *parent)
    : QObject{parent}
{}

void TestQml::timerMessage() const
{
    QTimer::singleShot(5000, this, &TestQml::message);
}



QString TestQml::message() const
{

    qDebug() <<"ZZZZZZ патриот!!!!";
    return m_message;
}

void TestQml::setMessage(const QString &newMessage)
{
    if (m_message == newMessage)
        return;
    m_message = newMessage;
    emit messageChanged();
}
