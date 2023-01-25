import QtQuick 2.0

Item {
    id: root

    property color color: "grey"
    property string text: "pranali"
    width: 100
    height: 100

    Rectangle{
        id:myrec
        color:root.color
        anchors.fill: parent

        Text {
             text: root.text
             anchors.centerIn: parent
        }


        MouseArea{
            drag.target: root.parent
            anchors.fill: parent
            onClicked: parent.z++
        }
    }
}

