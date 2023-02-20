 import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 58
        y: 150
        width: 100
        height: 100
        color: "red"
        MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                }

        Rectangle {
            id: rectangle1
            x: 208
            y: 0
            width: 100
            height: 100
            color: "green"


        }

        Rectangle {
            id: rectangle2
            x: 398
            y: 0
            width: 100
            height: 100
            color: "Purple"
        }

        Connections {
                target: mouseArea
                onClicked: {
                    console.log("clicked")
                    rectangle.width = 50
                    rectangle1.height = 150
                }

    }
    }
}
