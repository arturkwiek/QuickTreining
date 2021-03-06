#include "propertyqml.h"
#include <QDebug>
PropertyQml::PropertyQml(QObject *parent) : QObject(parent) { }

PropertyQml::~PropertyQml() { }

void PropertyQml::setValueToQML(QString pData) {
    qDebug() << "setValueToQML: ";
    _valueString = pData;
    emit valueToQMLChanged();
}

void PropertyQml::setTimeToQML(QString pData) {
    qDebug() << "setTimeToQML: ";
    _valueTime = pData;
    emit timeToQMLChanged();
}
QString PropertyQml::valueToQML() const {
    qDebug() << "valueToQML: " << _valueString;
    return _valueString;
}

QString PropertyQml::timeToQML() const {
    qDebug() << "timeToQML: " << _valueTime;
    return _valueTime;

}
/*

QVariantMap PropertyQml::get() const {
    QVariantMap variantMap;
    float min, max;
    variantMap.insert("min", min);
    variantMap.insert("max", max);
    return variantMap;
}

var aa = get();
aa.min

*/
