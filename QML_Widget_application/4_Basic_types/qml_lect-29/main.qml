import QtQuick 2.12
import QtQuick.Window 2.12

/*********************************************************
  *here going to use mosuearea
  *such as - scorll , drag and drop
 *********************************************************/

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle{
        id: myrect
        color:'red'
        width: 100
        height: 100
        anchors.centerIn: parent

        MouseArea{
            id:mymouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton

            onClicked: {
                console.log("Clicked:" + mouse.button)
                if(mouse.button ===Qt.LeftButton) parent.color="green"
                if(mouse.button ===Qt.RightButton) parent.color="blue"
            }

            onDoubleClicked: {
                console.log("Double Clicked :" + mouse.button)
            }

            onPositionChanged: {
                console.log("position x: " + mouseX + "position y: " + mouseY  )
            }

        }
    }

}
