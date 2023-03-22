import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

import com.company.dirhelper 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    DirHelper {
        id: dirhelper
        path: "/home/pranali/QT_practice/QT_QML_REPO/QML_Widget_application/13_Sample_Examples/106_Image_Viewer/Imges"
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
      //currentIndex: currentIndex

        Component.onCompleted: {
            var files = dirhelper.files

            for(var i = 0; i < files.length; i++) {
                console.log("Loading: ", files[i])
                var compoent = Qt.createComponent("ImagePage.qml")
                var page = compoent.createObject(swipeView,{"width" : 640, "height": 480 })
                page.source = "file://" + files[i]
            }
        }

    }


}
