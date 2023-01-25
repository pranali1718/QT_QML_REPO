import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: text1
        text: qsTr("Welcome Message")
        anchors.left: parent.horizontalCenter
        anchors.right: parent.left
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        font.pixelSize: 20
        anchors.bottomMargin: 341
        anchors.rightMargin: -404
        anchors.leftMargin: -84
        anchors.topMargin: -142
    }

    Rectangle{
        id:display_msg
        anchors.centerIn: parent
        width:606
        height: 40
        opacity: 1
        color: "#ffffff"
        border.color:"black"
        anchors.verticalCenterOffset: -75
        anchors.horizontalCenterOffset: 0

                Text {
            id: name
            anchors.centerIn: parent
            text: qsTr("HED 5in. Display")
            font.pixelSize: 22
        }
    }

    Text {
        id: text2
        text: qsTr("Idle Delay")
        anchors.left: display_msg.right
        anchors.right: display_msg.left
        anchors.top: display_msg.bottom
        anchors.bottom: display_msg.top
        font.pixelSize: 20
        anchors.rightMargin: -219
        anchors.leftMargin: -476
        anchors.bottomMargin: -97
        anchors.topMargin: 34
    }

    Text {
        id: text3
        text: qsTr("Transition Period")
        anchors.left: display_msg.right
        anchors.right: display_msg.left
        anchors.top: display_msg.bottom
        anchors.bottom: display_msg.top
        font.pixelSize: 20
        anchors.rightMargin: -539
        anchors.leftMargin: -221
        anchors.bottomMargin: -97
        anchors.topMargin: 34
    }

    TextField {
        id: textField
        anchors.left: text2.right
        anchors.right: text2.left
        anchors.top: text2.bottom
        anchors.bottom: text2.top
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 12
        anchors.rightMargin: -70
        anchors.leftMargin: -69
        anchors.bottomMargin: -86
        anchors.topMargin: 13
        placeholderText: "00"
        maximumLength: 2

    }

    TextField {
        id: textField1
        text: qsTr("")
        anchors.left: text3.right
        anchors.right: text3.left
        anchors.top: text3.bottom
        anchors.bottom: text3.top
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 12
        anchors.rightMargin: -102
        anchors.leftMargin: -102
        anchors.bottomMargin: -86
        anchors.topMargin: 13
        placeholderText: "00"
        maximumLength: 2

    }

    RoundButton {
        id: roundButton
        y: 427
        opacity: 1
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 49
        anchors.bottomMargin: 13
        icon.source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/VisualEditor_-_Icon_-_Menu.svg/2048px-VisualEditor_-_Icon_-_Menu.svg.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}
}
##^##*/
