import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView{
        id:l_view
        anchors.fill: parent
        anchors.margins: 20
        delegate: Color_Delegate{}
        model:ColorModel{}
    }
}
