import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
        width: 640
        height: 480
        color: "white"


    Rectangle {
        id: rectBlue
        width: parent.width/2
        height: parent.height/2
        anchors.centerIn: parent

        color: "lightblue"


    }

//    Image {
//        id: imgMinutes
////        x: 0
////        y: rect1.x + rect1.height

//        anchors {
////            left: 10
////            right: 0
////            top: 0
////            bottom: 0
//        }

//        source: "./zmt.jpg"
//        width: sourceSize.width
//        height: sourceSize.height
//        fillMode: Image.PreserveAspectFit
//        anchors.centerIn: parent
//    }

        Image {
            id: clock
            source: "./images/clock.png"
            width: sourceSize.width
            height: sourceSize.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    Image {
        id: black_long
        source: "./images/black long.png"
//        width: 20
        height: 70
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent

    }

//    Image {
//        id: black_short
//        source: "./images/black short.png"
//        width: sourceSize.width
//        height: sourceSize.height
//        fillMode: Image.PreserveAspectFit
//        anchors.centerIn: parent

//    }

//    Image {
//        id: red_long
//        source: "./images/red long.png"
//        width: sourceSize.width
//        height: sourceSize.height
//        fillMode: Image.PreserveAspectFit
//        anchors.centerIn: parent

//    }

//    Image {
//        id: red_short
//        source: "./images/red short.png"
//        width: sourceSize.width
//        height: sourceSize.height
//        fillMode: Image.PreserveAspectFit
//        anchors.centerIn: parent
//    }

    Text {
        id: txtTime
        text: qsTr("time")

        anchors {
            centerIn: imgMinutes
        }


    }

}
