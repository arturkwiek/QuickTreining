import QtQuick 2.12
import QtQuick.Window 2.0
import PropertyQml 1.0
import QtMultimedia 5.12

Window {
    visible: true
    width: rolex.width
    height: rolex.height
    color: "white"

    PropertyQml {
        id: propertyQml
    }
    MouseArea {

        anchors.fill: parent
        onClicked: propertyQml.valueToQML = "clicked"

    }

    Image {
        id: rolex

        source: "./Rolex.png"
        width: sourceSize.width
        height: sourceSize.height
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }

    Text {
        id: txtTime
        text: propertyQml.valueToQML
        anchors.centerIn: parent
    }
    Image {        id: seconds

        source: "./arrow red.png"
        //        width: sourceSize.width
        height: rolex.height*0.7
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
        transform: Rotation {
            origin.x: seconds.width/2
            origin.y: seconds.height/2
            RotationAnimation on angle {
                from: 0
                to: 7200
                duration: 16000
                loops: Animation.infinite
            }
        }
    }
    Image {        id: minutes
        source: "./arrow.png"
        height: rolex.height/2
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
        transform: Rotation {
            origin.x: minutes.width/2
            origin.y: minutes.height/2
            RotationAnimation on angle {
                from: 0
                to: 7200
                duration: 60000
                loops: Animation.infinite
            }
        }
    }
    Image {
        id: hours
        source: "./arrow.png"
        height: rolex.height/4
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
        transform: Rotation {
            origin.x: hours.width/2
            origin.y: hours.height/2
            RotationAnimation on angle {
                from: 0
                to: 360
                duration: 10000
                loops: Animation.infinite
            }
        }
    }

    Image {        id: zmt
        source: "./zmt.png"
        width: sourceSize.width/2
        height: sourceSize.height/2
        fillMode: Image.PreserveAspectFit
        antialiasing: true
        x: rolex.x + rolex.width / 2 - 4 * width / 2
        y: rolex.y + rolex.height / 2 - height / 2
    }

    Component.onCompleted: propertyQml.valueToQML =
                           "QML to C++ Property Binding" // set the Value from QML to C++ using set Property

}
