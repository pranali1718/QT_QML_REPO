import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: mytext
        text: qsTr("<html><b><font color='red'> Hello</font></b> <i><font color='green'> World</font></i></html>
                    <br><font color='purple'>this is test</font>
                    <br><a href='https://www.youtube.com/watch?v=ElZfdU54Cp8'>here is link</a>
                    <br><a href='http://www.voidrealms.com'>youtube</a>
                  ")
        anchors.centerIn: parent
        font.pointSize: 30
        font.bold: false
        font.italic: false
        //color: "blue"

        onLinkHovered: {
            console.log("Hover: " + link)
            if(link){
                mytext.font.bold = true
            }
            else{
                mytext.font.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)                     //for open the link

    }
}
