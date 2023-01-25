import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Myshape{
        id:shapecentre
        anchors.centerIn: parent

        text: "hello"

        Rectangle{
            color: "black"
            height: 30
            width: 30
            anchors.centerIn: parent

        }
      }
}
