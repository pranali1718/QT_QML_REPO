import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: tiger
        source: "https://kinsta.com/wp-content/uploads/2020/08/tiger-jpg.jpg"
        width: 400
        height :450

        Rectangle
        {
            color: "red"

            width: parent.width
            height: 50
            opacity: 0.5
        }

        Rectangle
        {
            color: "blue"

            width: 100
            height: parent.height
            opacity: 0.5
        }

    }
}
