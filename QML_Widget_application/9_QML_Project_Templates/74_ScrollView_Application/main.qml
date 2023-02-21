import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //component - encapsulate all QML component Definition
    Component{
        id:delegate

        Item {
            id:item
            width: 200
            height: 50
            Column{
                anchors.fill: parent
                spacing:5

                Label{
                    text: name
                    font.bold: true
                }
                Label{
                    text: number
                }
            }
        }
    }

    ListModel{
        id:model
        ListElement{
            name:"P P"
            number:"1235 23342"
        }
        ListElement{
            name:"P M"
            number:"24680 08642"
        }
        ListElement{
            name:"S M"
            number:"19450 13579"
        }
        ListElement{
            name:"W W"
            number:"7892 24442"
        }
        ListElement{
            name:"M P"
            number:"12235 098542"
        }
        ListElement{
            name:"B S"
            number:"1223 2398"
        }
    }

    ScrollView {
        id: scrollView
        anchors.fill: parent

        ListView{
            width: parent.width
            model:model
            delegate:delegate
        }
    }



}
