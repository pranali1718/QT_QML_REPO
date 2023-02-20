import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
            id: row
            width: 412
            height: 49
            spacing: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            DelayButton {
                id: delayButton
                text: qsTr("Delete Everything") 
                delay: 1000
                onProgressChanged: {
                    label.text = Math.round(progress * 100)
                    if(progress === 0) {
                        text = "Delete Everything"
                        label.text = "Status"
                    }
                }

                onActivated: {
                    label.text = "Done"
                    text = "BOOOOM"
                }
            }

            Label {
                id: label
                text: qsTr("Status")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pointSize: 25
            }
        }
}
