import QtQuick 2.12
import QtQuick.Window 2.12

/***********************************************************************
* here we are going to learn how to chnages the color by using one click
* used TapHandler
************************************************************************/


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{

        width: 100
        height: 100
        anchors.centerIn: parent

        color:input_handler.pressed ? "red" : "blue"

        TapHandler{
            id:input_handler

        }
    }
}
