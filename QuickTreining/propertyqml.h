#ifndef PROPERTYQML_H
#define PROPERTYQML_H

#include <QObject>

#include <QString>

class PropertyQml: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString valueToQML READ valueToQML WRITE setValueToQML NOTIFY valueToQMLChanged)

public:

    explicit PropertyQml(QObject *parent = 0);
    ~PropertyQml();
    QString valueToQML() const;
    void setValueToQML(QString);

signals:
     void valueToQMLChanged();

private:
    QString _valueString;
};

#endif // PROPERTYQML_H
