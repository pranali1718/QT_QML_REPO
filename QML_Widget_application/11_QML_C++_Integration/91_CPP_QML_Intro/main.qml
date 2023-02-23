import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        anchors.centerIn: parent
        height: 300
        width: 300
        border.color: "black"
        Text{
            text:"Hello World"
            anchors.centerIn: parent
        }
    }
}
