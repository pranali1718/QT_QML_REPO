import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        anchors.fill: parent

        Column {
            id: column
            width: 150
            height: 400

            CheckBox {
                id: checkBox
                text: qsTr("Normal")
            }

            CheckBox {
                id: checkBox1
                text: qsTr("Not checkable")
            }

            CheckBox {
                id: checkBox2
                text: qsTr("Tristate")
            }


            CheckBox {
                id: checkBox3
                text: qsTr("Execlusive")
            }

            CheckBox {
                id: checkBox4
                text: qsTr("Repeat")
            }

            Button {
                id: button
                text: qsTr("Reset")


            }
        }

        Column {
            id: column1
            width: 490
            height: parent.height

            Label {
                id: label
                text: qsTr("Status Here")
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 25
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Connections {
                target: button
                onClicked: {
                    checkBox.checkState = Qt.Unchecked
                    checkBox1.checkState = Qt.Unchecked
                    checkBox2.checkState = Qt.Unchecked
                    checkBox3.checkState = Qt.Unchecked
                    checkBox4.checkState = Qt.Unchecked
                    label.text = "Status here"

        }
    }
}
}
