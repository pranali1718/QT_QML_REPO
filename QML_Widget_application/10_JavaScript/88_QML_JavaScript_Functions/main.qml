import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id:root

    Item {
        id: item
        function perfromclick()
        {
            //rect.color =  "green"
            var max = root.width - rect.width
            rect.x = (rect.x == 0) ? max : 0
        }
    }


    Rectangle{
        id:rect
        height: 100
        width:100
        color:swapcolor()
        x:0
        y:(parent.height/2 )-(height/2)

        //function can be in componenet
        function swapcolor()
        {
            return ma.pressed ? "blue" : "black"
        }

        MouseArea{
            id:ma
            anchors.fill: parent
            onClicked: {
                item.perfromclick()
            }


        }

    }


}
