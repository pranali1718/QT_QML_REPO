import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4

Window {
    id: window
    width: 640
    height: 480
    visible: true
    property alias grid: grid
    title: qsTr("Hello World")
    color: "black"


    Row {
        id: row
        anchors.left: grid.right
        anchors.right: grid.left
        anchors.top: grid.bottom
        anchors.bottom: grid.top
        anchors.rightMargin: -490
        anchors.topMargin: -354
        anchors.leftMargin: -318
        anchors.bottomMargin: 56

        Image {
            id: logo
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/image/logo.png"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Label{
            anchors.topMargin: 20
            color: "white"
            id: label_console
            x: 215
            y: 120
            text: "<html><body><b>Console Client</b></font>?.11.00_220823</body></html>"
            anchors.top: image.bottom
            font.pointSize: 13
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle{
            id:myrec
            x: 20
            y:160
            width: 533
            height: 1
            color: "grey"

        }
    }

    Grid {
        id: grid
        x: 0
        y: 0
        width: 252
        height: 145
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 42
        anchors.horizontalCenterOffset: -86
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 12
        columns: 2


        Label {
            id: label
            text: qsTr("Server")
            color: "grey"
        }

        ComboBox {

            id: comboBox1
            width: 250
            height: 30
        }

        Label {
            id: user_ID
            text: qsTr("ID")
            color: "grey"
        }

        TextField {
            id: user_name
            width: 250
            height: 30
            text: qsTr("")
        }

        Label {
            id: password
            text: qsTr("Password")
            color: "grey"
        }

        TextField {
            id: user_password
            width: 250
            height: 30
            echoMode: TextInput.Password

        }
    }

    Column {
        id: column
        y: 0
        width: 200
        height: 148
        anchors.verticalCenter: grid.verticalCenter
        anchors.left: grid.right
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 310
        anchors.leftMargin: 84
        anchors.horizontalCenter: grid.horizontalCenter
        spacing: 12

        Button {
            id: button
            width: 35
            height: 35
            highlighted: true
            icon.source: "https://upload.wikimedia.org/wikipedia/commons/5/58/Ic_settings_48px.svg"

        }

        Button {
            id: button1
            width: 80
            height: 70
            text: qsTr("Login")
            highlighted: true
        }
    }

    CheckBox {
        id: checkBox
        width: 105
        visible: true



        anchors.left: grid.right
        anchors.top: grid.bottom
        anchors.bottom: grid.top
        focusPolicy: Qt.StrongFocus
        clip: false
        anchors.leftMargin: -213
        anchors.bottomMargin: -171
        anchors.topMargin: -14
        Label{
            x: 76
            y: 13
            text: "Saved ID"
            color: "white"
        }
    }

    CheckBox {
        id: checkBox1
        x: 182
        y: 386

        anchors.left: grid.right
        anchors.top: grid.bottom
        anchors.bottom: grid.top
        anchors.leftMargin: -184
        anchors.bottomMargin: -211
        anchors.topMargin: 26
        Label{
            x: 46
            y: 12

            text: "Auto Login"
            color: "white"
        }
    }
}
