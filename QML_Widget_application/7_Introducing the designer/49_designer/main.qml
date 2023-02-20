import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property alias rectangle: rectangle

    Rectangle {
        id: rectangle
        x:164
        y:107
        width: 200
        height: 200
        color: "red"
        border.color: "black"
        visible:true

    }


}
