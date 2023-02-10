
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


window{
    id: welcomeScreen
    width: 640
    height: 480
    visible: true
    color:"purple"
    Text {
        id: name
        text: qsTr("Screen_2")
    }
}
