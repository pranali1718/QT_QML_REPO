import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:rect
        color: "pink"
        anchors.centerIn: parent
        height: 300
        width: 400

        clip: false

        Flow{
            anchors.centerIn: parent

            flow:Flow.TopToBottom
            spacing: 2
            Myshape{color: "red"}
            Myshape{color: "blue"}
            Myshape{color: "black"}
            Myshape{color: "orange"}
            Myshape{color: "yellow"}
            Myshape{color: "brown"}
            Myshape{color: "darkblue"}
        }
    }
}







