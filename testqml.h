#ifndef TESTQML_H
#define TESTQML_H

#include <QObject>

class TestQml : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString message READ message WRITE setMessage NOTIFY messageChanged FINAL)

public:
    explicit TestQml(QObject *parent = nullptr);

public slots:
    void timerMessage() const;
    QString message() const;
    void setMessage(const QString &newMessage);

signals:

    void messageChanged();
private:
    QString m_message;
};

#endif // TESTQML_H
