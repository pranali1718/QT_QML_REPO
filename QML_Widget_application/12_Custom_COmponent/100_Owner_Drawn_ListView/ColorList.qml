import QtQuick 2.15
import QtQuick.Controls 2.5

Component{
    id:colorDelegate
    Item {
        id: item
        width:100
        height: 40

        Row{
            spacing: 5
            Rectangle{
                id:clr_Box
                width:10
                height: 10
                color:code
                border.color: "black"
                border.width: 1

            }
            Text {
                id: name
                text:'<b>Name</b>' + name
            }
        }
    }

}
