import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{

        MyShape{color:  "red"}
        MyShape{color:  "black"}
        MyShape{color:  "blue"}

        spacing: 2
        anchors.centerIn: parent
    }
}
