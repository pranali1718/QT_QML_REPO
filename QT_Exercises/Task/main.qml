import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        anchors.horizontalCenter: parent.ce
        id: grid
//        x: 35
//        y: 160

    Text {
        id: text1
        x: 236
        height: 25
        text: qsTr("Welcome Message")
        anchors.top: parent.top
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: -51
        anchors.horizontalCenter: text2.horizontalCenter
    }


        Text {
            id: text2
            x: 206
            y: 12
            text: qsTr("HED 5in. Display")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: 8
        }


    Rectangle {
        id: rectangle
        x: -24
        y: -9
        width: 616
        height: 45
        opacity: 0.1
        color: "#ffffff"
        border.width: 2
    }

}

    TextField {
        id: textField
        x: 105
        y: 261
        width: 40
        height: 40
        text: qsTr("")
        placeholderText: "00"

//        function update()
//        {
//             console.log(textField)
//             textField.text = Math.round(text)

//        }

        onTextEdited: update()
    }

    TextField {
    id: textField1
    x: 485
    y: 261
    width: 40
    height: 40
    text: qsTr("")
    placeholderText: "00"


    }

    Text {
        id: text3
        x: 84
        y: 233
        width: 85
        height: 22
        text: qsTr("Idle Delay")
        font.pixelSize: 18
    }

Text {
    id: text4
    x: 435
    y: 233
    width: 158
    height: 22
    text: qsTr("Transition Period")
    font.pixelSize: 18
}

RoundButton {
    id: roundButton
    x: 4
    y: 404
    width: 64
    height: 64
    radius: 74
    text: ""
    autoRepeat: false
    autoExclusive: false
    checkable: false
    checked: false
    display: AbstractButton.IconOnly
}
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:2}D{i:8}
}
##^##*/
