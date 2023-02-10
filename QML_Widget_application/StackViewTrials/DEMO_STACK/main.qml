import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack view")

        StackView {
            id: stackView
            x: 14
            y: 556
            width: 640
            height:  480

            initialItem: page1

            Rectangle{
                id: page1
                x: -10
                y: -554

                //anchors.fill: parent
                //color: "lightgreen"
                Button {
                    id: buttonPage1
                    width: 80
                    height: 17
                    text: "back to 2"
                    anchors.verticalCenterOffset: 1
                    anchors.horizontalCenterOffset: -8
                    anchors.centerIn: parent
                    onClicked: {
                        //stackView.pop()  //**Is THIS CORRECT**
                        stackView.push(page2) //**Is THIS CORRECT**

                    }
                }

            }
            Rectangle{

                id: page2

                //anchors.fill: parent
                //color: "lightblue"
                Button {
                    id: buttonPage2
                    text: "back to 1"
                    rotation: -1.313
                    anchors.verticalCenterOffset: -566
                    anchors.horizontalCenterOffset: 18
                    anchors.centerIn: parent
                    onClicked: {
                        stackView.pop() //**Is THIS CORRECT**
                    }
                }

            }
        }
    }
