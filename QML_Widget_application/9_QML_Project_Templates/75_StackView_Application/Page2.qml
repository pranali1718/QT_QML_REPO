import QtQuick 2.9
import QtQuick.Controls 2.5

Page{
    width: 600
        height: 400

        title: qsTr("Page 2")

        Label {
            color: "#056524"
            text: qsTr("You are on Page 2.")
            font.pointSize: 15
            font.bold: true
            anchors.centerIn: parent
        }
}
