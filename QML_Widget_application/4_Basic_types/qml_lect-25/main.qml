import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: myitem
        anchors.centerIn: parent
        height: 150
        width: 200


        Rectangle{
            color:"red"
            anchors.centerIn: parent
            height: 300
            width: 300

        }
    }

}
