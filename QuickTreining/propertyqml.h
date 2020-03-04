#ifndef PROPERTYQML_H
#define PROPERTYQML_H

#include <QObject>
#include <QTime>

#include <QString>

class PropertyQml: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString valueToQML READ valueToQML WRITE setValueToQML NOTIFY valueToQMLChanged)
    Q_PROPERTY(QString timeToQML READ timeToQML WRITE setTimeToQML NOTIFY timeToQMLChanged)


public:

    explicit PropertyQml(QObject *parent = 0);
    ~PropertyQml();
    QString valueToQML() const;
    QString timeToQML() const;
    void setValueToQML(QString);
    void setTimeToQML(QString);

signals:
    void valueToQMLChanged();
    void timeToQMLChanged();

private:
     QString _valueString;
     QString _valueTime;
};

#endif // PROPERTYQML_H
