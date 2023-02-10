import QtQuick 2.0
import QtQuick.Controls 1.4

Column {
    property var myModel

    signal buttonClicked()

    Repeater {
        model: myModel

        Button {
            text: model.index
            onClicked: {
                buttonClicked()


            }

        }

    }
    Text {
        id: name
        text: qsTr("sdfg")
    }
}
