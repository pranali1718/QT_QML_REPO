import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
Item{
    Image {
        id: img
        x: 186
        y: 104
        source: "qrc:/new/logo.png"
    }
    Button {
        id: nextButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }

        text: "Next"
        onClicked: stackview.push( "GridTwo.qml" )
    }
    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
    }

    Text {
        anchors {
            right: parent.right
            bottom: parent.bottom
           }
        id: name
        x: 148
        y: 185

        text: qsTr("You are at 1st page")
        anchors.rightMargin: 128
        anchors.bottomMargin: 250
        color: "red"
        font.bold: true
        font.pointSize: 30


    }

}
