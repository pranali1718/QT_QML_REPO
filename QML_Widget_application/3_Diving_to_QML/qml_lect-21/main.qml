import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myname
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        width: 150
        height :100
        opacity: 0.25
        anchors.centerIn: parent

     }
     TextInput{
            id :mytext
            text:"Hi Pranali"
            anchors.centerIn: parent
            color: "red"
            font.bold: true

      }
     Text {
         id: text
         text: mytext.text
     }


}
