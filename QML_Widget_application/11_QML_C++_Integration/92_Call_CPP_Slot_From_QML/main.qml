import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        height: 300
        width: 300
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing:15

        Label{
            text:" Call C++ Slots "
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Click Me"

            //calling a slot
            onClicked: {
                 testing.bark()

//                //can call a non-slot must be A property
//                var num = testing.number()              //gives the eroor because it is not slot
//                print(num)
            }

        }
    }
}
