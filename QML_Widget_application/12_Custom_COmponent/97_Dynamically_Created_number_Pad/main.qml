import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Column {
        id: column
        width: 252
        height: 278
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: lblStatus
            text: qsTr("Status")
            font.pointSize: 25
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        NumPad {
            id: numberPad
            width: 125
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: lblStatus.text = value
        }
    }

}
