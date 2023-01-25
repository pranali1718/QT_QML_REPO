import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var midX: width / 2
    property var midY: height / 2

    MyShape{
        color: "red"
    }
    MyShape{
        color: "green"
    }
    MyShape{
        color: "blue"
    }
}
