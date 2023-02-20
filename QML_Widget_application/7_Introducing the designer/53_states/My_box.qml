import QtQuick 2.15

Item {
    id:element
    property color offcolor: "red"
    property color oncolor: "green"
    property color defaultcolor: "blue"

    Rectangle {
        id: rectangle
        color: defaultcolor
        anchors.fill: parent
        radius: width
    }
    states:[
        State {
            name: "on"

            PropertyChanges {
                target: rectangle
                color: oncolor
            }
        },
        State {
            name: "off"

            PropertyChanges {
                target: rectangle
                color: offcolor
            }
        }
    ]
}
