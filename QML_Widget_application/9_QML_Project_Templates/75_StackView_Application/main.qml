import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window{

    id: window
    width: 640
    height: 480
    visible: true
    color: "black"
}

//Item {
//    ApplicationWindow
//    {
//        id: appWindow
//        width: 500
//        height: 800
//        visible: true
//        color: "black"

//        ListModel {
//            id: lm
//            Component.onCompleted: {
//                for (var i = 0; i < 42; i++) append( { message: 'Hellow World ' + i })
//            }
//        }

//        ListView {
//            id: lv
//            width: 300
//            height: 800
//            model: lm
//            delegate: Button {
//                text: model.message
//                onClicked: secondWindow.text = text
//            }
//        }
//    }

////    ApplicationWindow
////    {
////        id: secondWindow
////        width: 500
////        height: 800
////        x: appWindow.x + 500
////        y: appWindow.y
////        visible: true
////        property alias text: label.text

////        Text {
////            id: label
////            anchors.centerIn: parent
////        }
////    }
//}

