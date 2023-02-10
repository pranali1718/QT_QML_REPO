import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Item{
    ApplicationWindow{
        id:apw_1
       // color: "red"
        width: 640
        height: 480
        visible: true

        Text {
            id: name
            text: qsTr("Pranali")
            //verticalCenter: parent

        }

    }
}
