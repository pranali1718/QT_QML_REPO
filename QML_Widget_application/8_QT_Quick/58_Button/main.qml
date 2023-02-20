import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Button")
    color: "grey"

    Row {
        id: row
        x: 0
        y: 0
        width: 640
        height: 45
        spacing: 5

        Button {
            id: button
            text: qsTr("Cat")
        }

        Button {
            id: button1
            text: qsTr("Dog")
        }

        Button {
            id: button2
            text: qsTr("Peacock")
        }
    }

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 35
        fillMode: Image.PreserveAspectFit
    }
    Connections {
        target: button
        onClicked: image.source = "qrc:/Images/cat.jpeg"
    }
    Connections {
        target: button1
        onClicked: image.source = "qrc:/Images/dog.jpeg"
    }
    Connections {
        target: button2
        onClicked: image.source = "qrc:/Images/peacock.jpeg"
    }

}
