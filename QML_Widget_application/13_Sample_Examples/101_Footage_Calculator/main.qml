import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        id: column
               width: 200
               height: 169
               anchors.horizontalCenter: parent.horizontalCenter
               anchors.verticalCenter: parent.verticalCenter
               spacing: 10

               Label {
                          id: label
                          text: qsTr("0 sqft")
                          anchors.horizontalCenter: parent.horizontalCenter
                          font.pointSize: 25
                          font.bold: true
                      }


    }

}
