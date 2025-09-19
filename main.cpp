#include <QDirIterator>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <testqml.h>
#include <QQmlContext>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // создать с++ класс с методом доступным для QML
    // и вызвать его из QML при запуске
    // и в главном экране где cold hot напитки добавить компонент как на картинке полностью написать на QML
   // и из бээка чтобы через 5 сек вызывался метод  выводящий в логи "ZZZZZZ патриот!!!!"
    TestQml testqml;


    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("testqml", &testqml);

    QDirIterator it(":/",
                    QStringList() << "*.png" << "*.jpg",
                    QDir::Files,
                    QDirIterator::Subdirectories);
    while (it.hasNext())
        qDebug() << it.next();

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("DrinkBar", "Main");

    return app.exec();
}
