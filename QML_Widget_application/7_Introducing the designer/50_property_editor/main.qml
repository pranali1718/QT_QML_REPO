import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 78
        y: 102
        width: 200
        height: 200
        color: "#977d7a"
        border.color: "#070606"
        border.width: 9
   }
    Rectangle {
        id: rectangle1
        x: 292
        y: 132
        width: 200
        height: 200
        color: "#977d7a"
        border.color: "#070606"
        border.width: 9
    }

}
