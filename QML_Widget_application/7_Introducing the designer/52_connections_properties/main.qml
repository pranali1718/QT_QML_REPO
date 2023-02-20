import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 85
        y: 148
        width: 200
        height: 200
        color: "#0d04e9"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        x: 340
        y: 148
        width: 200
        height: 200
        color: "#056d3d"
        property string title: "Title"

        Text {
            id: element
            color: "#ffffff"
            text: parent.title
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 35
        }
    }

    Connections {
        target: mouseArea
        onClicked: rectangle1.title = "Hello"
    }
}
