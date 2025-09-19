#ifndef JUSTFILE_H
#define JUSTFILE_H

#include <QObject>

class JustFile : public QObject
{
    Q_OBJECT
public:
    explicit JustFile(QObject *parent = nullptr);

signals:
};

#endif // JUSTFILE_H
