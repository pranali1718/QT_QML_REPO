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

    Row {
        id: row
        x: 0
        y: 0
        width: 640
        height: 158

        Image {
            id: logo
            anchors.verticalCenter: parent.verticalCenter
            source: ""
            anchors.horizontalCenter: parent.horizontalCenter

        }



        Label {
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
}

    GridLayout {
        id: gridLayout

        width: 376
        height: 151
        anchors.verticalCenterOffset: 54
        anchors.horizontalCenterOffset: 0
        columnSpacing: 20
        anchors.centerIn: parent
        columns: 3
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

        Button{
            id:setting_button
            height: 50
            highlighted: true
            width: 30
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

        Button {
            id: login_button
            Layout.rowSpan: 2
            Layout.fillHeight: true
            width: 100
            height: 100
            text: qsTr("Login")
            highlighted: true
            flat: false
            font.bold: false
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

    CheckBox {
        id: checkBox
        text:"Saved Id"

        anchors.left: gridLayout.right
        anchors.top: gridLayout.bottom
        anchors.leftMargin: -298
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
        anchors.leftMargin: -103
        anchors.bottomMargin: -86
        anchors.topMargin: 6
        Layout.topMargin: 0
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }

}


