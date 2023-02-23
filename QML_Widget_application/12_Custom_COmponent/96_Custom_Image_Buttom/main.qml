//import QtQuick 2.15
//import QtQuick.Window 2.15

//Window {
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Hello World")

//    Column {
//        id: column
//        x: 155
//        y: 40
//        width: 330
//        height: 400

//        CoolButton {
//            id: coolButton
//        }

//        CoolButton {
//            id: coolButton1
//        }
//    }
//}
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        x: 196
        y: 65
        width: 105
        height: 231
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        CoolButton {
            id: coolButton
            width: 100
            height: 100
            opacity: 1
            source: "qrc:/Images/up.png"
            transformOrigin: Item.Center
            onClicked: console.log("Up clicked")
        }

        CoolButton {
            id: coolButton1
            width: 100
            height: 100
            source: "qrc:/Images/down.png"
            onClicked: console.log("Down clicked")
        }
    }



}
