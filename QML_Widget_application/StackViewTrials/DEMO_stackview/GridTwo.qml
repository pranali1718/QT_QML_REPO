import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
Item {
    id: item1
    Text {
        id: name
        text: qsTr("You are at 2ndst page")
        font.pointSize: 23
        font.bold: true
        color: "red"
        anchors {
            right: parent.right
            bottom: parent.bottom

        }
        //anchors.centerIn: parent
        anchors.rightMargin: 148
        anchors.bottomMargin: 230
    }
        Button {
        id: nextButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Next"
    }

    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
        onClicked: stackview.pop()
    }
}
