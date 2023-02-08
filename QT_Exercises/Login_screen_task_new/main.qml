
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3


Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "black"
    property alias myrec: myrec


    Row {
        id: row
        width: 640
        anchors.left: gridLayout.right
        anchors.top: gridLayout.bottom
        anchors.bottom: gridLayout.top
        anchors.topMargin: -369
        anchors.leftMargin: -508
        anchors.bottomMargin: 60

        Image {
            id: logo
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/Image/logo.png"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            anchors.topMargin: 20
            color: "white"
            id: label_console
            x: 215
            y: 120
            text: "<html><body><b>Console Client</b></font>?.11.00_220823</body></html>"
            anchors.top: logo.bottom
            font.pointSize: 13
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle{
            id:myrec
            x: 20
            y:160
            width: 600
            height: 1
            color: "grey"
        }

}

    GridLayout {
        id: gridLayout

        width: 376
        height: 151
        anchors.verticalCenterOffset: 54
        anchors.horizontalCenterOffset: 0
        columnSpacing: 20
        anchors.centerIn: parent
        columns: 2
        rows:4

        Label {
            id: server_name
            text: qsTr("Server")
            color: "grey"
            horizontalAlignment: Text.AlignLeft
            Layout.fillHeight: false
            Layout.fillWidth: false
        }
        ComboBox {
            id: comboBox
            width: 200
        }



        Label {
            id: id
            text: qsTr("ID")
            color: "grey"
        }
        TextField {
            id: txt_ID
            text: qsTr("")
        }


        Label {
            id: pass
            text: qsTr("Password")
            color: "grey"
        }

        TextField {
            id: txt_password
            color: "#000000"
            text: qsTr("")
            font.strikeout: false
            placeholderTextColor: "#353637"
            hoverEnabled: true
            layer.format: ShaderEffectSource.RGBA
            layer.mipmap: false
            focus: false
        }
    }

    Column{
        anchors.left: gridLayout.right
        anchors.right: gridLayout.left
        anchors.top: gridLayout.bottom
        anchors.bottom: gridLayout.top
        spacing: 10
        anchors.rightMargin: -426
        anchors.leftMargin: -50
        anchors.bottomMargin: -151
        anchors.topMargin: -150

        Button{
            id:setting_button
            height: 40
            highlighted: true
            width: 40
            icon.source: "https://upload.wikimedia.org/wikipedia/commons/5/58/Ic_settings_48px.svg"
        }
        Button {
            id: login_button
            Layout.rowSpan: 2
            Layout.fillHeight: true
            width: 100
            height: 100
            text: qsTr("Login")

            onClicked: {
                text:p_obj.login();
            }

        }

    }

    CheckBox {
        id: checkBox
        text:"Saved Id"
        anchors.left: gridLayout.right
        anchors.top: gridLayout.bottom
        anchors.leftMargin: -272
        anchors.topMargin: 6
        Layout.topMargin: 0
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
}

    CheckBox {

        id: checkBox1
        text: qsTr("Auto Login")
        anchors.left: checkBox.right
        anchors.top: checkBox.bottom
        anchors.bottom: checkBox.top
        anchors.leftMargin: -102
        anchors.bottomMargin: -86
        anchors.topMargin: 6
        Layout.topMargin: 0
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }

}
