import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 480
   title: qsTr("Stack view")

    StackView {
        id: stackView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        initialItem: page1

      Rectangle {
            id: page1
            width: parent.width
            height: parent.height
            visible: true
            color: "black"
            //property string status: "Login Failed!!"
            property int currentIndex: 0

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

            Grid{
                id: gridLayout
                anchors.verticalCenterOffset: 34
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
                    //echoMode: TextInput.Password
                }
            }
            Column {
                id: column
                x: 407
                y: 234
                width: 200
                height: 112
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
                        console.log("click event")
                        stackView.push(page2)
                    }
                }
            }
        }
       Rectangle {
           id: page2
           color: "white"

           Text {
               id: name
               x: 266
               y: 184
               width: 139
               height: 30
               visible: true
               color: "black"
               text: qsTr("WELCOME WISENET")
           }
       }
    }

}
