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
        onValueToQMLChanged: console.log(valueToQML)
//        onTimeToQMLChanged: console.log(timeToQML)
    }
    MouseArea {
        id: mouse_area

        anchors.fill: parent
        onClicked: {
            propertyQml.valueToQML = "clicked"
            propertyQml.setTimeToQML(timeToQML)

        }


    }

    Image {        id: rolex

        source: "./Rolex.png"
        width: sourceSize.width
        height: sourceSize.height
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }

    Text {        id: current_time
        text: propertyQml.valueToQML
//        anchors.centerIn: parent
    }

    Image {        id: seconds

        source: "./arrow red.png"
        //        width: sourceSize.width
        height: rolex.height*0.7
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
//        transform: Rotation {
//            origin.x: seconds.width/2
//            origin.y: seconds.height/2
//            RotationAnimation on angle {
//                from: 0
//                to: 7200
//                duration: 16000
//                loops: Animation.infinite
//            }
        }

    Image {        id: minutes
        source: "./arrow.png"
        height: rolex.height*0.6
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
//        transform: Rotation {
//            origin.x: minutes.width/2
//            origin.y: minutes.height/2
//            RotationAnimation on angle {
//                from: 0
//                to: 7200
//                duration: 60000
//                loops: Animation.infinite
//            }
//        }
    }

    Image {        id: hours
        source: "./arrow.png"
        height: rolex.height*0.45
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
        transform: Rotation {
//            origin.x: hours.width/2
//            origin.y: hours.height/2
//            RotationAnimation on angle {
//                from: 0
//                to: 360
//                duration: 10000
//                loops: Animation.infinite
//            }
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

    function p(x) {
        console.log(x);
        switch(x) {
        case 0: //console.log("0");
            return "./number_00.png";
        case 1: //console.log("1");
            return "./number_01.png";
        case 2: //console.log("2");
            return "./number_02.png";
        case 3: //console.log("3")
            return "./number_03.png";
        case 4: //console.log("4");
            return "./number_04.png";
        case 5: //console.log("5");
            return "./number_05.png";
        case 6: //console.log("6");
            return "./number_06.png";
        case 7: //console.log("7");
            return "./number_07.png";
        case 8: //console.log("8");
            return "./number_08.png";
        case 9: //console.log("9");
            return "./number_09.png";
        default: console.log("default");
            if(x-2>0)
                return "./number_02.png";
            if(x-1>0)
                return "./number_01.png";
            return "./number.png";
        }
    }

    Timer {
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date()
            hours.rotation = date.getHours()*30 + date.getMinutes()/2
            minutes.rotation = date.getMinutes() * 6 + 6.0 * date.getSeconds()/60.0
            seconds.rotation = date.getSeconds() * 6
            current_time.text = date.toLocaleTimeString(Qt.locale("en_US"), "hh:mm:ss ap")
//             console.log((date.getHours()/10).toFixed());
            number1.source = p((date.getHours()/10).toFixed(0)%10);//"./number_00.png";
            number2.source = p(date.getHours()%10);//"./number_00.png";
            number3.source = p((date.getMinutes()/10).toFixed(0)%10);//"./number_00.png";
            number4.source = p(date.getMinutes()%10);//"./number_00.png";
            number5.source = p(((date.getSeconds())/10).toFixed(0)%10);//"./number_00.png";
            number6.source = p(date.getSeconds()%10);//"./number_00.png";
//            switch(date.getHours()) {
//            case 0: console.log("0");
//                number1.source = p(0);//"./number_00.png";
//                number2.source = p(0);//"./number_00.png";
//                break;
//            case 1: console.log("1");
//                number1.source = p();//"./number.png";
//                number2.source = p(1);//"./number_01.png";
//                break;
//            case 2: console.log("2");
//                number1.source = p();//"./number.png";
//                number2.source = p(2);//"./number_02.png";
//                break;
//            case 3: console.log("3");
//                number1.source = p();//"./number.png";
//                number2.source = p(3);//"./number_03.png";
//                break;
//            case 4: console.log("4");
//                number1.source = "./number.png";
//                number2.source = "./number_04.png";
//                break;
//            case 5: console.log("5");
//                number1.source = "./number.png";
//                number2.source = "./number_05.png";
//                break;
//            case 6: console.log("6");
//                number1.source = "./number.png";
//                number2.source = "./number_06.png";
//                break;
//            case 7: console.log("7");
//                number1.source = "./number.png";
//                number2.source = "./number_07.png";
//                break;
//            case 8: console.log("8");
//                number1.source = "./number.png";
//                number2.source = "./number_08.png";
//                break;
//            case 9: console.log("9");
//                number1.source = "./number.png";
//                number2.source = "./number_09.png";
//                break;
//            case 10: console.log("10");
//                number1.source = "./number01.png";
//                number2.source = "./number_00.png";
//                break;
//            case 11: console.log("11");
//                number1.source = "./number_01.png";
//                number2.source = "./number_01.png";
//                break;
//            case 12:  console.log("12");
//                number1.source = "./number_01.png";
//                number2.source = "./number_02.png";
//                break;
//            case 13: console.log("13");
//                number1.source = p(1);//"./number_01.png";
//                number2.source = p(3);//"./number_03.png";
//                break;
//            case 14: console.log("14");
//                number1.source = p(1);//"./number_01.png";
//                number2.source = "./number_04.png";
//                break;
//            case 15: console.log("15");
//                number1.source = "./number_01.png";
//                number2.source = "./number_05.png";
//                break;
//            case 16: console.log("16");
//                number1.source = "./number_01.png";
//                number2.source = "./number_06.png";
//                break;
//            case 17: console.log("17");
//                number1.source = "./number_01.png";
//                number2.source = "./number_07.png";
//                break;
//            case 18: console.log("18");
//                number1.source = "./number_01.png";
//                number2.source = "./number_08.png";
//                break;
//            case 19: console.log("19");
//                number1.source = "./number_01.png";
//                number2.source = "./number_09.png";
//                break;
//            case 20: console.log("20");
//                number1.source = "./number_02.png";
//                number2.source = "./number_00.png";
//                break;
//            case 21: console.log("21");
//                number1.source = "./number_02.png";
//                number2.source = "./number_01.png";
//                break;
//            case 22: console.log("22");
//                number1.source = "./number_02.png";
//                number2.source = "./number_02.png";
//                break;
//            case 23: console.log("23");
//                number1.source = "./number_02.png";
//                number2.source = "./number_03.png";
//                break;
//            }
        }
    }
    Image {
        id: number1
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Image {
        id: number2
        anchors.left: number1.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Image {
        id: dots1
        anchors.left: number2.right
        source: "./dots.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }


    Image {
        id: number3
        anchors.left: dots1.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Image {
        id: number4
        anchors.left: number3.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Image {
        id: dots2
        anchors.left: number4.right
        source: "./dots.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Image {
        id: number5
        anchors.left: dots2.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Image {
        id: number6
        anchors.left: number5.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
        }

    Component.onCompleted: propertyQml.valueToQML = "Component.onCompleted QML to C++ Property Binding"

}
