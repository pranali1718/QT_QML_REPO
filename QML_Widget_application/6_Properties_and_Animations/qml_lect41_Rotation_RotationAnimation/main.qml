import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id:window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:rec
        color: "black"
        height: 200
        width: 200
        anchors.centerIn: parent


        Text {
            id: my_text
            text: Math.round(parent.rotation)
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 100
            color:"white"
        }

        RotationAnimation{
            id:animation
            target: rec
            loops: Animation.Infinite
            from:parent.rotation
            to:360
            direction: RotationAnimation.Clockwise
            duration: 3000
            running: true
        }

        MouseArea{
            id:click
            anchors.fill:parent
            onClicked: {
               if(animation.paused)
               {
                   animation.resume()
               }
               else
               {
                   animation.pause()
               }
            }
        }





    }
}
