import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    SwipeView{
        id:swipeview
        anchors.fill: parent
        currentIndex: tabbar.currentIndex

        Page1{

        }

        Page2{

        }
    }

    header:TabBar{
      id:tabbar
      currentIndex: swipeview.currentIndex

      TabButton{
          text: "Page 1"
      }

      TabButton{
          text: "Page 2"
      }
    }
}
