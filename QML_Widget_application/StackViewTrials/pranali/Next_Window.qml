import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 1600
    height: 900
    visible: true
    title: qsTr("Hello World")

    Text {
        id: name
        x: 154
        y: 206
        text: qsTr("Affu Tu Pagal he!!!")
        font.pointSize: 29
    }
}
