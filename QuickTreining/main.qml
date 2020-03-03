import QtQuick 2.12
import QtQuick.Window 2.12
import PropertyQml 1.0

Window {
    visible: true
    width: 640
    height: 480
    color: "white"

    PropertyQml {
        id: propertyQml
    }
    MouseArea {

        anchors.fill: parent
        onClicked: propertyQml.valueToQML = "clicked"
        Rectangle {
            id: rect1
            width: parent.width/2
            height: parent.height/2

            color: "lightblue"
            Rectangle {
                id: rect2
                anchors.bottom: imgMinutes.bottom
                //            bottom:  parent.bottom
                anchors.left: imgMinutes.left
                //            y: parent.bottom
                width: 10
                height: 10

<<<<<<< HEAD
    Rectangle {
        id: rectBlue
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        color: "lightblue"
        Component.onCompleted: console.log("rectangle")
=======
                color: "lightgreen"

            }
>>>>>>> connection with c++

        }
        Rectangle {
<<<<<<< HEAD
            id: white
            color: "white"
            width: parent.width/2
            height: parent.height/2
            anchors.centerIn: parent
            //            anchors.fill: parent
            opacity: 0.63

            Rectangle {
                id: red
                x: - 20

                width: 100
                height: 20
                opacity: 0.2
                color: "red"
                Component.onCompleted: console.log(x)
            }

            Component.onCompleted: console.log(x)
        }

        Rectangle {
            id: blue
            x: white.x - 20
            y: white.y + 20
            width: 100
            height: 20
            opacity: 0.2
            color: "blue"
            Component.onCompleted: console.log(x)
        }

        Rectangle {
            id: red2
            x: white.x - 20
            y: white.y + 40
            width: 100
            height: 20
            opacity: 0.2
            color: "red"
            Component.onCompleted: console.log(x)
=======
            id: r3
            width: 10
            height: 10
            color: "red"
            anchors.centerIn: rect1
        }
        Text {
            id: txtTime
            text: propertyQml.valueToQML
            anchors.centerIn: r3
>>>>>>> connection with c++
        }

    }
<<<<<<< HEAD

    //    Image {
    //        id: imgMinutes
    ////        x: 0
    ////        y: rect1.x + rect1.height
=======

    Image {
        id: imgMinutes
        //        x: 0
        //        y: rect1.x + rect1.height

        anchors {
            //            left: 10
            //            right: 0
            //            top: 0
            //            bottom: 0
        }
>>>>>>> connection with c++

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
        x: clock.x + clock.width/2
        y: clock.y + clock.height/2 - height
        height: 70
        rotation: 0
        transformOrigin: Item.Bottom
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: black_short
        source: "./black short.png"
        x: clock.x + clock.width/2
        y: clock.y + clock.height/2 - height
        height: 50
        rotation: 0
        transformOrigin: Item.Bottom
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: red_long
        source: "./red long.png"
        x: clock.x + clock.width/2
        y: clock.y + clock.height/2 - height
        height: 70
        transformOrigin: Item.Bottom
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: red_short
        source: "./red short.png"
        x: clock.x + clock.width/2
        y: clock.y + clock.height/2 - height
        height: 50
        transformOrigin: Item.Bottom
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: txtTime
        text: qsTr("time")

        anchors {
            centerIn: imgMinutes
        }


    }


    Component.onCompleted: propertyQml.valueToQML =
                           "QML to C++ Property Binding" // set the Value from QML to C++ using set Property

}
