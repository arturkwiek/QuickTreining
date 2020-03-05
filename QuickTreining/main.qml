import QtQuick 2.12
import QtQuick.Window 2.0
import PropertyQml 1.0
import QtMultimedia 5.12

Window {
    visible: true
    width: rolex.width
    height: rolex.height
    color: "white"

    PropertyQml { /* ================>*/        id: propertyQml
        onValueToQMLChanged: console.log(valueToQML)
    }
    MouseArea { /* ================>*/        id: mouse_area

        anchors.fill: parent
        onClicked: {
            propertyQml.valueToQML = "clicked"
            propertyQml.setTimeToQML(timeToQML)
        }
    }

    Image { /* ================>*/        id: rolex
        source: "./Rolex.png"
        width: sourceSize.width
        height: sourceSize.height
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }

    Text { /* ================>*/        id: current_time
        text: propertyQml.valueToQML
        y: rolex.height - height*1.5
    }

    Image { /* ================>*/        id: seconds
        source: "./arrow red.png"
        height: rolex.height*0.7
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
    }

    Image { /* ================>*/        id: minutes
        source: "./arrow.png"
        height: rolex.height*0.6
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
    }

    Image { /* ================>*/        id: hours
        source: "./arrow.png"
        height: rolex.height*0.45
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: rolex
    }

    Image { /* ================>*/        id: zmt
        source: "./zmt.png"
        width: sourceSize.width/2
        height: sourceSize.height/2
        fillMode: Image.PreserveAspectFit
        antialiasing: true
        x: rolex.x + rolex.width / 2 - 4 * width / 2
        y: rolex.y + rolex.height / 2 - height / 2
    }

    function p(x) {
        //        console.log(x);
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

    Timer { /* ================>*/        id: watch_timer
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date()
            hours.rotation = date.getHours()*30 + date.getMinutes()/2
            minutes.rotation = date.getMinutes() * 6 + 6.0 * date.getSeconds()/60.0
            seconds.rotation = date.getSeconds() * 6
            number1.source = p(Math.floor(date.getHours()/10).toFixed(0)%10)
            number2.source = p(date.getHours()%10)
            number3.source = p(Math.floor(date.getMinutes()/10).toFixed(0)%10)
            number4.source = p(date.getMinutes()%10)
            number5.source = p(Math.floor(date.getSeconds()/10).toFixed(0)%10)
            number6.source = p(date.getSeconds()%10)
        }
    }
    Image { /* ================>*/        id: number1
        x: 10
        y: 10
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Image { /* ================>*/        id: number2
        y: 10
        anchors.left: number1.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Image { /* ================>*/        id: dots1
        y: 10
        anchors.left: number2.right
        source: "./dots.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }


    Image { /* ================>*/        id: number3
        y: 10
        anchors.left: dots1.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Image { /* ================>*/        id: number4
        y: 10
        anchors.left: number3.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Image { /* ================>*/        id: dots2
        y: 10
        anchors.left: number4.right
        source: "./dots.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Image { /* ================>*/        id: number5
        y: 10
        anchors.left: dots2.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Image { /* ================>*/        id: number6
        y: 10
        anchors.left: number5.right
        source: "./number.png"
        height: rolex.height*0.05
        fillMode: Image.PreserveAspectFit
    }

    Component.onCompleted: propertyQml.valueToQML = "property t"

}
