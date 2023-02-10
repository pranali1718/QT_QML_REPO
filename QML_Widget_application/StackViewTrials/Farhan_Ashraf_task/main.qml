import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.15
import QtQuick 2.0

Window {
    id: root
    width: 1024
    height: 680
    visible: true
    title: qsTr("InfotainmentExample")



  StatusBar {
      id: statusBar
  }

  Loader {
      id: mainLoader
      anchors {
          left: parent.left
          right: parent.right
          top: statusBar.bottom
          bottom: parent.bottom
      }
      source: "StackViewPage.qml"
  }
}
