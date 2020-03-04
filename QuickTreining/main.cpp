#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QTime>
#include "propertyqml.h"

int main(int argc, char *argv[])
{
    QTime time;
    PropertyQml propQml;
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    // Registering the Data binding class for accesing in QML
    qmlRegisterType<PropertyQml>("PropertyQml", 1, 0, "PropertyQml");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

//    QQmlApplicationEngine engine;
//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);
//    engine.load(url);

    qDebug() << "time: " << time.currentTime().toString();
    propQml.setTimeToQML(time.currentTime().toString());
emit propQml.timeToQMLChanged();


    return app.exec();
}
