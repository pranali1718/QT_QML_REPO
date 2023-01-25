import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle{
        id:myrect
        anchors.centerIn: parent
        color: "red"
        height: 200
        width: 200

        border.color: "#000000"     //black
        border.width: 5

        radius: 100

        gradient: Gradient{
            GradientStop{position: 0.0 ; color: "blue"}
            GradientStop{position: 0.5; color: "red"}
            GradientStop{position: 1.0 ; color: "green"}


        }

    }

}
