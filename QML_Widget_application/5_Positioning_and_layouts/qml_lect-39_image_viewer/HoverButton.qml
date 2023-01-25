import QtQuick 2.0

Rectangle{
    id:root
    property color color: "red"
    property color hoverColor: "pink"
    property color clickColor: "orange"
    property color textColor: "white"
    property color textHover: "black"
    property alias title : display
    property alias area: mousearea

    Rectangle{
        id:myrec
        height: root.height
        width: root.width
        color:root.color
        clip: true

        Text {
            id: display
            text: ""
            anchors.centerIn: parent
            color: root.textColor
            font.bold: true

        }
        MouseArea{
            id:mousearea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                parent.color = root.hoverColor
                display.color = root.textColor
            }

            onExited: {
                parent.color = root.hoverColor
                display.color = root.textColor
            }

            onPressed: parent.color = root.clickColor
            onReleased: parent.color = root.hoverColor
        }
    }
}

