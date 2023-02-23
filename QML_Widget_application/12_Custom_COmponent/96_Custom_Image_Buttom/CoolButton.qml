//import QtQuick 2.15

//Item {
//    id:root
//    property color colorBorder: "darked"
//    property color colorNormal: "red"
//    property color colorPressed: "yellow"
//    property color colorHover: "orange"
//    property string source: ""

//    signal clicked()

//    Rectangle{
//        id:rect
//        radius: width
//        color: root.colorNormal
//        border.width: 2
//        border.color: root.colorBorder
//        anchors.fill: parent

//        MouseArea{
//            id:ma
//            anchors.fill: parent
//            hoverEnabled: true

//            onPressed: {
//                body.color = root.colorBorder
//                root.clicked()
//            }

//            onReleased: {
//                body.color = root.colorHover
//            }
//            onEntered: {
//                body.color = root.colorHover
//            }

//            onExited: {
//                body.color = root.colorNormal
//            }
//        }

//        Image {
//            id: image1
//            anchors.fill: parent

//            fillMode:Image.PreserveAspectFit
//            source: root.source
//        }
//    }
//}
import QtQuick 2.0

Item {

    id: root
    property color colorBorder: "darkred"
    property color colorNormal: "red"
    property color colorPressed: "yellow"
    property color colorHover: "orange"
    property string source: ""

    signal clicked()

    Rectangle {
        id: body
        radius: width
        color: root.colorNormal
        border.width: 2
        border.color: root.colorBorder
        anchors.fill: parent

        MouseArea {
            id: area
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                body.color = root.colorPressed
                root.clicked()
            }
            onReleased: {
                body.color = root.colorHover
            }
            onEntered: {
                body.color = root.colorHover
            }
            onExited: {
                body.color = root.colorNormal
            }
        }

        Image {
            id: image
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: root.source
        }
    }



}
