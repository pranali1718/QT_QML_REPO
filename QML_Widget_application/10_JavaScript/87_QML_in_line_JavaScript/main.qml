import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:rect
        color: ma.pressed ? " blue" : "red"
        height:100
        width:100
        x:0
        y: (parent.height/2) - (height/2)

        MouseArea{
            id:ma
            anchors.fill: parent
            onClicked: {
                print("JavaScript in Signal Handler")
                var max = root.height -  rect.height
                rect.x = (rect.x == 0) ? max : 0
            }
        }
    }
}
