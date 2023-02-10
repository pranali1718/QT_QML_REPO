import QtQuick 2.15
import QtQuick.Controls 2.0


Rectangle{
    id:myrec
    color: "grey"
    height: 100
    width: 100
   // anchors.centerIn: parent

    MouseArea{
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z++
    }


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

//    ApplicationWindow
//    {
//        id: secondWindow
//        width: 500
//        height: 800
//        x: appWindow.x + 500
//        y: appWindow.y
//        visible: true
//        property alias text: label.text

//        Text {
//            id: label
//            anchors.centerIn: parent
//        }
//    }
}
