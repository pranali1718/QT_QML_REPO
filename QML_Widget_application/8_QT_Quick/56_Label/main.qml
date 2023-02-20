/****************************************************
  * ---------------Label-------------------
  * label is used to styling the text.
  * we can also write the text using HTML in label
******************************************************/

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label{
        id:lb_1
        text:"This is label"
        color:"blue"
        font.bold: true
        font.pixelSize: 30
        anchors.centerIn: parent
    }

    Label{
        id:lb_2
        Text {
            id: lb_2_text
            x: 174
            y: 294
            text: qsTr("This is <b><i>HTML</i></b>")
            font.pixelSize: 30
        }
    }
}
