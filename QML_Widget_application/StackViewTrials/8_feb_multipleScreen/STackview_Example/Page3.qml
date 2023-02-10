import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 1")

    Grid {
        id: grid
        width: 281
        height: 97
        anchors.centerIn: parent
        spacing: 10
        columns: 2

        Label {
            text: "First Name"
        }

        TextField {
            id: txtFirstname
            text: ""
        }

        Label {
            text: "Last Name"
        }

        TextField {
            id: txtLastname
            text: ""
        }
    }

    Button {
        id: button
        x: 250
        y: 264
        text: qsTr("Button")
    }
}
