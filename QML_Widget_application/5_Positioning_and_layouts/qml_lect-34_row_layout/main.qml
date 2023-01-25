import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row{
        anchors.centerIn: parent
        spacing: 5
        Myshape{color: "red"}
        Myshape{color: "blue"}
        Myshape{color: "black"}
    }
}
