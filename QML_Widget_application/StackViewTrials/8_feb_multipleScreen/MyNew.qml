import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item{
    ApplicationWindow{
        id:apw
        //color: "black"
        width: 640
        height: 480
        visible: true

        Text {
            id: name
            text: qsTr("Mahale")
           // verticalCenter: parent
            color: "white"
        }


   }
}

//Rectangle{
//   id:myrec
//   color: "grey"
//   height: 100
//   width: 100
//   anchors.centerIn: parent

//   MouseArea{
//       anchors.fill: parent
//       drag.target: parent
//       onClicked: parent.z++
//   }


//}
