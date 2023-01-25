import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid{
            anchors.centerIn: parent
            spacing: 5
            rows:-1
            columns: -1

            Myshape{color: "red"}
            Myshape{color: "blue"}
            Myshape{color: "black"}
            Myshape{color: "orange"}
            Myshape{color: "grey"}
            Myshape{color: "yellow"}
            Myshape{color: "brown"}
            Myshape{color: "pink"}
            Myshape{color: "darkblue"}

    }
 }
