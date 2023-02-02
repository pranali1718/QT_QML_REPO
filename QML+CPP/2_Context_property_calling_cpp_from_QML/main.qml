import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CPP CALL WITH QML")

    Column{
        spacing: 10
        Button
        {
            text : "Call C++ Method"
            onClicked: {
                BWorker.regularMethod()
                BWorker.cppSlot()
            }

        }
        Rectangle {
                        width: textToShowId.implicitWidth + 50
                        height: 50
                        color: "beige"
                        Text{
                            id : textToShowId
                            text : BWorker.regularmethodwithreturn("Pranali",23)
                        }
                    }

    }
}
