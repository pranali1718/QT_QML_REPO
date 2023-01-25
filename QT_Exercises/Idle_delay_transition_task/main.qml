import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Grid{
        x: 17
        y: 169
        anchors.verticalCenterOffset: -44
        anchors.horizontalCenterOffset: 0

        Rectangle{
            id:display_msg
            width:606
            height: 40
            anchors.verticalCenterOffset: 200
            color: "#ffffff"
            border.color:"black"
            Text {
                id: name
                width: 162
                height: 22
                anchors.centerIn: parent
                text: qsTr("HED 5in. Display")
                font.pixelSize: 22
                anchors.verticalCenterOffset: 1
                anchors.horizontalCenterOffset: 1
            }
        }


    }


    TextField {
        id: textField_1
        x: 147
        y: 281
        width: 40
        height: 40
        visible: true
        clip: false
        transformOrigin: Item.Center
        scale: 1
        z: 1
        rotation: 0
    }

    TextField {
        id: textField
        x: 467
        y: 281
        width: 40
        height: 40
    }

    Text {
        id: text1
        x: 129
        y: 249
        text: qsTr("Idle Delay")
        font.pixelSize: 18
    }

    Text {
        id: text2
        x: 410
        y: 249
        text: qsTr("Transition Period")
        font.pixelSize: 18
    }

    Text {
        id: text3
        x: 236
        y: 132
        text: qsTr("Welcome Message")
        font.pixelSize: 20
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}
}
##^##*/
