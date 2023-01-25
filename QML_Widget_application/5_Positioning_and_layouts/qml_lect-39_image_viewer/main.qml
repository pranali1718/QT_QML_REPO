import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id:root

    property color bgcolor: "grey"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"

    property var size: 100

    Rectangle{
        id:background
        color:root.buttoncolor
        height: parent.height
        width: 100

        Column{
            id:column
            anchors.fill: parent

            HoverButton{
                width: 100
                height: 50
                title.text: "Cat"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed:image.source = "qrc:/images/cat.jpeg"

            }
            HoverButton{
                width: 100
                height: 50
                title.text: "Dog"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed :image.source = "qrc:/images/dog.jpeg"

            }
            HoverButton{
                width: 100
                height: 50
                title.text: "Peacock"
                color: root.buttoncolor
                hoverColor: root.hovercolor
                clickColor: root.clickcolor
                area.onPressed: image.source = "qrc:/images/peacock.jpeg"
            }
        }
    }
    Rectangle{
        id:rec
        color:root.bgcolor
        x:100
        y:0
        width: parent.width - x
        height: parent.height

        Image {
            id: image
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/cat.jpeg"
        }
    }
}
