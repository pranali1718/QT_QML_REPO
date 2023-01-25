import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    property alias label1: label1
    title: qsTr("Hello World")



    property string username: "pranali"
    property string password: "pranali123"
    property string status: "failed"

    Popup{
        id:status_policy
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        width: 200
        height: 300
        modal: true
        focus: true

        Label{
            id:status_label
            text: status
            font.bold: true
        }

    }

    Column {
        id: column
        x: 178
        y: 12
        width: 285
        height: 159
        anchors.verticalCenter: parent.verticalCenter

        Grid {
            id: grid
            width: 300
            height: 100
            spacing: 10
            columns: 2



            Label {
                id: label
                text: qsTr("Username")
            }
            TextField {
                id: txt_user_name
                text: qsTr("")
            }

            Label {
                id: label1
                text: qsTr("Password")
            }

            TextField {
                id: txt_password
                text: ""
                echoMode: TextInput.Password
            }
        }

        Button {
            id: button
            text: qsTr("Login")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                if(username === txt_user_name.text && password === txt_password.text) status = "hello p"
                status_policy.open()
            }
        }
    }
}
