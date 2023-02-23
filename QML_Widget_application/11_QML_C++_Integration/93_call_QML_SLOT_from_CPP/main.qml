import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Connections{
        target: testing                 //c++ object on root context
        onNotice :{
            console.log("Slot call from c++")
            lblStatus.text = data       //get this  from the signal
        }
    }

    Column{
        id: column
        width: 228
        height: 159
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 25
        Label {
            id: lblTitle
            text: "Connecting to Signals"
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: lblStatus
            text: "Status"
            font.pointSize: 25
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Row {
            id: row
            width: 200
            height: 400
            spacing: 25

            Button {
                id: btnStart
                text: qsTr("Start")

                //Call a slot
                onClicked: testing.p_start()

            }
            Button {
                id: btnStop
                text: qsTr("Stop")

                //Call a slot
                onClicked: testing.p_stop()
            }
        }
    }
}
