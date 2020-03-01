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
        Component.onCompleted: console.log("rectangle")


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
        source: "./clock.png"
        width: sourceSize.width
        height: sourceSize.height
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent

        Component.onCompleted: console.log("clock")
    }

    Image {
        id: black_long
        source: "./black long.png"
        height: 70
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: black_short
        source: "./black short.png"
        height: 50
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: red_long
        source: "./red long.png"
        height: 70
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: red_short
        source: "./red short.png"
        height: 50
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: txtTime
        text: qsTr("time")

        anchors {
            centerIn: imgMinutes
        }


    }

}
