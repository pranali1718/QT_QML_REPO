import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.15
import QtQuick 2.0

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("InfotainmentExample")
    color: "Black"

    Text {
        id: name
        text: qsTr("main page")
        color: "white"
    }

  Loader {
      id: mainLoader
      anchors {
       left: parent.left
        right: parent.right
          bottom: parent.bottom
      }
      source: "StackViewPage.qml"
  }

}
