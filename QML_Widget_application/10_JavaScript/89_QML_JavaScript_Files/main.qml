import QtQuick 2.15
import QtQuick.Window 2.15

import "code.js" as Code  //object for calling thr .js file

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id:root

    Rectangle{
        id:rect
        width:100
        height: 100
        color: Code.swapColor(ma)
        x:0
        y:(parent.height/2) - (height/2)

        MouseArea{
            id:ma
            anchors.fill: parent
            onClicked: {
                Code.func(rect)
            }
        }

    }
}
