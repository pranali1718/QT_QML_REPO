import QtQuick 2.15
import QtQuick.Controls 2.5

Item {

    id:root
    signal clicked(int value)

    Column{
        id:col
        Grid{
            id:grid
            spacing:5
            rows: 4
            columns: 3
        }
    }

    function doclicked(value){
        console.log(value)
        clicked(value)
    }

    Component.onCompleted: {
        console.log("Creating button")
        var num = 0
        for(var i=0 ; i<10 ; i++)
        {
            if(i==0) num = 7 //1st row
            if(i==3) num = 4 //2nd row
            if(i==6) num = 1 //3rd row
            if(i==9) num = 0 //last st row

            var btn = Qt.createQmlObject('import QtQuick 2.15; import QtQuick.Controls 2.5; Button {id: btn' + i +'; onClicked:doclicked('+ num +') }',grid,"DynamicallyLoaded")
            btn.text = num
            btn.width = 40
            btn.height = 40
            num++
        }

        //Set the last button on the bottom
        var obj = grid.children[grid.children.length - 1]
        obj.parent = col
        obj.width = (40 * grid.columns) + 10
    }
}
