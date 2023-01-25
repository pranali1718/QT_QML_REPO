import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //going to demeonstarate what is X, Y and Z
    //x goes side
    //y goes down
    //z goes dioganally

    Image {
        id: myimg
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        height: 100
        width: 150
        x:100
        y:50
        z:0
    }

    Rectangle{
        color: "red"
        width: 200
        height: 200
        x:50
        y:50
        z:0
        opacity: 0.5

    }
    Rectangle{
        color: "blue"
        width: 200
        height: 200
        x:150
        y:150
        z:0
        opacity: 0.5

    }



}
