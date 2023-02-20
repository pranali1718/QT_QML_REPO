import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    My_box {
        id: my_box
        x: 213
        y: 133
        width: 200
        height: 200

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            onClicked: {
                if(parent.state ==="on"){
                            parent.state = "off"
                }
                else
                {
                    parent.state = "on"
                }
            }
        }
    }
}
