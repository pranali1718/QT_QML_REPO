import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

//    Text
//    {
//        id: element
//        text: qsTr("hello world")
//        anchors.centerIn: parent
//        font.bold: false
//        font.pixelSize: 25
//        font.family: containmentMask
//        font.italic: true
//        font.pointSize: 50
//    }


    Image {
        id: flower
        width: 168
        height: 159
        source: "/home/pranali/QT_practice/QML_Widget_application/JPEG_example_flower.jpg"
        anchors.verticalCenterOffset: -148
        anchors.horizontalCenterOffset: -186
        anchors.centerIn: parent
    }
    Image {
        id: dog
        source: "https://kinsta.com/wp-content/uploads/2020/08/tiger-jpg.jpg"
        anchors.verticalCenterOffset: -61
        anchors.horizontalCenterOffset: 131
        width: 100
        height: 90
        rotation: -0.258
        anchors.centerIn: parent

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
