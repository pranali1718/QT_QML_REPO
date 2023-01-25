import QtQuick 2.12
import QtQuick.Window 2.12

//child parent relationship

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myimg
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        width: 150
        height: 100
        x:100
        y:100

        Rectangle{
            color:"red"
            x:0
            y:0
            width: 50
            height: 50
            opacity: 0.5
        }

        Rectangle{
            color:"blue"
            x:parent.width - width
            y:parent.height - height
            width: 50
            height: 50
            opacity: 0.5
        }

        Rectangle{
            color:"brown"
            x:width -50
            y:50
            width: 50
            height: 50
            opacity: 0.5
        }
    }
}
