import QtQuick 2.0

Rectangle{
    id:myrec
    color: "grey"
    height: 100
    width: 100

    MouseArea{
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z++
    }
}
