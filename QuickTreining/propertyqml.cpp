#include "propertyqml.h"
PropertyQml::PropertyQml(QObject *parent) : QObject(parent) { }

PropertyQml::~PropertyQml() { }

void PropertyQml::setValueToQML(QString pData) {
    _valueString = pData;
    emit valueToQMLChanged();
}

QString PropertyQml::valueToQML() const {
    return _valueString;
}
