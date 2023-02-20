import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 174
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Label {
            id: label
            text: qsTr("Menu")
        }

        ComboBox {
            id: comboBox
            height: 40
            model: [" ","pizza","pasta","sandwich"]
        }

        Label {
            id: label1
            text: qsTr("Menu")
        }

        ComboBox {
            id: comboBox1
            height: 40
            model: ListModel{
                ListElement{text:" "}
                ListElement{text:"Pranali"}
                ListElement{text:"Farhan"}
                ListElement{text:"Kajal"}
            }
        }
    }
}
