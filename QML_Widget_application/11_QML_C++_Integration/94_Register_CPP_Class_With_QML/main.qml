import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

//import our class
import work.info 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //creating the instance
    Test{
        id:testt
        onStatus: lblStatus.text = data
    }

    Column {
        id: column
        width: 101
        height: 88
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10


        Label {
            id: label
            text: qsTr("Register a C++ Class")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: false
            font.pointSize: 10
        }

        Label {
            id: lblStatus
            text: qsTr("Status")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 25
        }

        Button {
            id: button
            text: qsTr("Click Me")
            onClicked: {
                var num = Math.round(Math.random() * 100)
                testt.work(num)

            }

        }
    } }
