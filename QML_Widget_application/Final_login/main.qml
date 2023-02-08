import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Controls 2.1
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

import org.mydb 1.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "black"

    Data_base{
        id:mydb
    }


    Image {
        id: logo
        source: "qrc:/image/logo.png"
        anchors.verticalCenter: gridLayout.verticalCenter
        anchors.top: gridLayout.bottom
        anchors.verticalCenterOffset: -149
        anchors.horizontalCenterOffset: 24
        anchors.topMargin: -217
        anchors.horizontalCenter: gridLayout.horizontalCenter

    }

    Label {
        id: label_console
        color: "white"
        text: "<html><body><b>Console Client</b></font>?.11.00_220823</body></html>"
        anchors.left: gridLayout.right
        anchors.top: gridLayout.bottom
        anchors.bottom: gridLayout.top
        anchors.leftMargin: -195
        anchors.topMargin: -161
        anchors.bottomMargin: 46
        font.pointSize: 13
    }

    Rectangle{
        id:myrec
        y:160
        width: 600
        height: 1
        color: "grey"
        anchors.left: gridLayout.right
        anchors.bottom: gridLayout.top
        anchors.leftMargin: -384
        anchors.bottomMargin: 23
    }

    Grid{
        id: gridLayout
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: -18
        spacing: 7
        columnSpacing: 20
        anchors.centerIn: parent
        columns: 2
        rows:4

        Label {
            id: server_name
            text: qsTr("Server")
            color: "grey"
        }

        ComboBox {
            id: servers_name
        }

        Label {
            id: id
            text: qsTr("ID")
            color: "grey"
        }
        TextField {
            id: user_id
            text: qsTr("")

            Keys.onReturnPressed:             {
                console.log(user_id.text)
            }
        }

        Label {
            id: pass
            text: qsTr("Password")
            color: "grey"
        }

        TextField {
            id: user_password
            color: "#000000"
            text: qsTr("")
            echoMode: TextInput.Password
        }
    }

    CheckBox {
        id: checkBox
        text:""
        anchors.left: gridLayout.right
        anchors.top: gridLayout.bottom
        anchors.bottom: gridLayout.top
        anchors.bottomMargin: -130
        anchors.leftMargin: -124
        anchors.topMargin: 6
        Label{
            x: 34
            text: "Saved ID"
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
        }
    }

    CheckBox {
        id: checkBox1
        text: ""
        anchors.left: checkBox.right
        anchors.top: checkBox.bottom
        anchors.bottom: checkBox.top
        anchors.bottomMargin: -64
        anchors.leftMargin: -32
        anchors.topMargin: 6
        Label{
            text: "Auto Login"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: -76
            anchors.leftMargin: 34
            anchors.bottomMargin: 6
            anchors.topMargin: 6
            color: "white"
        }
    }

    Column {
        id: column
        width: 200
        height: 400
        anchors.left: gridLayout.right
        anchors.top: gridLayout.bottom
        anchors.topMargin: -95
        anchors.leftMargin: 26
        spacing: 7

        Button{
            id:setting_button
            height: 25
            highlighted: true
            width: 25
            icon.source: "https://upload.wikimedia.org/wikipedia/commons/5/58/Ic_settings_48px.svg"
        }

        Button {
            id: login_button
            width: 60
            height: 60
            text: qsTr("Login")
            onClicked: {
                console.log("button click event")
                console.log(mydb.login_id(user_id.text,user_password.text))

                if((mydb.login_id(user_id.text,user_password.text)=== '1'))
                {
                    //status="Login Succesfull"
                    console.log(user_id.text)
                    console.log(user_password.text)
                }
            }
        }
    }
}
