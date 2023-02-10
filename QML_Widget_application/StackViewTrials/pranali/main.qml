import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12


Window {
    id:wid
    width: 1600
    height: 900
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rectangle
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.rightMargin: 640
        anchors.leftMargin: 0
        anchors.bottomMargin: 480
        Button{
            text: "click here"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 206
            anchors.bottomMargin: -231
            anchors.rightMargin: -346
            anchors.leftMargin: 266
            onClicked: {
                var component = Qt.createComponent("Next_Window.qml")
                var child_Window    = component.createObject(wid)
                child_Window.show()
            }
        }
    }
}
