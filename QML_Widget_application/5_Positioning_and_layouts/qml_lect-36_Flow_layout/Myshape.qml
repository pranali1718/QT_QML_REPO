import QtQuick 2.0

Rectangle{
    id:myrec
    color: "gray"
    width: 100
    height: 100

    MouseArea{
        drag.target: parent
        anchors.fill: parent
        onClicked: parent.z++
    }

}
