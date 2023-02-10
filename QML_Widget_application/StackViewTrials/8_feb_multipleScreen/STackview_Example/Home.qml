import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Home")

    Label {
        color: "#f91b02"
        text: qsTr("You are on the home page.")
        font.pointSize: 15
        font.bold: true
        styleColor: "#f95030"
        anchors.centerIn: parent
    }
}
