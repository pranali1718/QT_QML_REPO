import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property var value: 0


    Row {
        id: row
        x: 223
        y: 204
        width: 213
        height: 41
        spacing: 10


        RoundButton {
            id: roundButton1
            text: "+"
            font.pointSize: 15
            font.bold: true
            onClicked: {
                value++
            }
        }

        RoundButton {
            id: roundButton
            text: "-"
            font.pointSize: 15
            font.bold: true
            onClicked: {
                value--
            }
        }

        Label {
            id: label
            text: "Value : 0" + root.value
            font.pointSize: 23
            font.bold: true
        }
    }
}
