import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    color: "black"
    title: qsTr("Hello World")
    Text {
        id: name
        text: qsTr("welcomeeee/....")
        color: "White"
        anchors.centerIn: parent
    }


    //property var midX: width / 2
    //property var midY: height / 2

//    MyShape{
//        //color:"black"


//    }
//    MyShape{
//        //color: "green"
//    }
//    MyNew{
//        //color: "blue"
//       // visible: false

//    }

//    MyNew{
//        color:"grey"
//    }
}

