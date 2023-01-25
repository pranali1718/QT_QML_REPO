import QtQuick 2.12
import QtQuick.Window 2.12


/*



 */


Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:my_rec
        height: 100
        width: 100
        color: "black"
        x:0
        y:190                   //(parent.height / 2)  - (height / 2)

        PropertyAnimation{
            id:onanimationright
            target: my_rec
            property: "x"
            to:window.width - my_rec.width
            duration: 500                           //speed taken by rec to move  ...time in second
        }

        PropertyAnimation{
            id:onanimationleft
            target: my_rec
            property: "x"
            to:0
            duration: 500                           //
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(my_rec.x == 0)
                {
                    onanimationright.start()
                }
                else
                {
                    onanimationleft.start()
                }
            }
        }

    }
}
