import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        width: 171
        height: 101
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        id: label
        y: 135
        width: 343
        height: 36
        text: qsTr("Progress = ") + busyIndicator.running
        anchors.right: busyIndicator.left
        anchors.bottom: busyIndicator.top
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.rightMargin: -117
        anchors.bottomMargin: 18

        MouseArea {
            id: mouseArea
            width: 100
            height: 100
            onClicked: {
                if(busyIndicator.running)
                {
                    console.log("Turning OFF")
                    busyIndicator.running = false
                }
                else
                {
                    console.log("Turning ON")
                    busyIndicator.running = true
                }
            }
        }
    }
}























