import QtQuick 2.12
import QtQuick.Window 2.12

//we are going to use logo file / image file

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    
    property var middle: height/2

    Image {
        id: localimage
        source: "qrc:/images/JPEG_example_flower.jpg"

       // anchors.centerIn: parent
        width:300
        //height: 300

        fillMode:Image.PreserveAspectFit

        x:300
        y:middle - 100

    }

    Image {
        id: remoteimage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"

       // anchors.centerIn: parent
        width:100
        //height: 300

        fillMode:Image.PreserveAspectFit

        x:100
        y:middle

    }
}
