import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

// checkkdelegates are advanced then checkboxes

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        id:col
        height: 400
        width: 200
        anchors.centerIn: parent

        Label{
            id:label
            text: qsTr("Selected")
            font.bold: true
            font.pixelSize: 30
        }

        ListView{
            width:200
            height: 200
            model: ["option A","Option B", "option c"]
            delegate: CheckDelegate{
                text:modelData
                onCheckStateChanged: label.text = index + " - " + modelData + " = " + checked
            }

        }

    }
}
