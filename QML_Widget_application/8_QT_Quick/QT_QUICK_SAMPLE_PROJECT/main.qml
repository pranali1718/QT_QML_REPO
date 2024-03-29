﻿import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

import org.mydb 1.0

Window {
    id: window
    visible: true
    width: 480
    height: 640
    title: qsTr("QT QUICK")

    Reset_Class{
        id:p_obj
    }

    Label{
        text: "Student Registration Form"
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -282
        anchors.horizontalCenterOffset: -1
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
        font.bold: true
    }

    Grid{
        id: grid
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -124
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        columns: 2
        spacing: 10

        Label {
            id: name
            text: qsTr("First Name")
            font.pointSize: 14
        }

        TextField {
            id: f_name
            width: 220
            placeholderText: qsTr("")
            onEditingFinished: {
                console.log("First Name : " + f_name.text)
            }
        }

        Label {
            id: sur_name
            text: qsTr("Last name")
            font.pointSize: 14
        }

        TextField {
            id: l_name
            width: 220
            placeholderText: qsTr("")
            onEditingFinished: {
                console.log("Last Name : " + l_name.text)
            }
        }

        Label {
            id: label2
            text: qsTr("Mobile Number")
            font.pointSize: 14
        }

        TextField {
            id: textField2
            width: 220
            placeholderText: qsTr("")
            maximumLength: 10
            onEditingFinished: {
                console.log("Contact : " + textField2.text)
            }
        }

        Label {
            id: e_id
            text: qsTr("Email ID")
            font.pointSize: 14
        }

        TextField {
            id: mail
            width: 220
            placeholderText: qsTr("")
            onEditingFinished: {
                console.log("Mail : " + mail.text)
            }
        }

        Label {
            id: label4
            text: qsTr("Address")
            font.pointSize: 14
        }

        TextField {
            id: textField4
            width: 220
            height: 50
            placeholderText: qsTr("")
            onEditingFinished: {
                console.log("Address : " + textField4.text)
            }
        }

        Label {
            id: label5
            text: qsTr("State")
            font.pointSize: 14
        }

        ComboBox {
            id: states
            width: 220
            currentIndex: 0
            model: ["Select","Maharashtra","Gujrat","MP","Bihar","GOA"]
            onActivated:{
                console.log("State : "+ model[currentIndex])
            }
        }

        Label {
            id: label6
            text: qsTr("City")
            font.pointSize: 14
        }

        ComboBox {
            id: city
            width: 220
            currentIndex: 0
            model:["Select ","Ahmedabad","Pune","Mumbai","Baroda","Indore","Surat","Nagpur","Nasik"]
            onActivated:
            {

                console.log("City : " + model[currentIndex])
            }

        }
    }

    Column {
        id: row
        width: 200
        height: 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 34
        anchors.horizontalCenterOffset: -83
        anchors.horizontalCenter: parent.horizontalCenter
        spacing:10

        Label {
            id: label7
            text: qsTr("Gender")
            font.pointSize: 14
        }
    }

    Row {
        id: row1
        width: 200
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 35
        anchors.horizontalCenterOffset: 60
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label8
            text: qsTr("Male")
            font.pointSize: 14
        }

        RadioButton {
            id: radioButton1
            text: qsTr("")
            onClicked: console.log("Gender : " + label8.text)
        }

        Label {
            id: label9
            text: qsTr("Female")
            font.pointSize: 14
        }

        RadioButton {
            id: radioButton2
            text: qsTr("")
            onClicked: console.log("Gender : " +label9.text)
        }
    }

    Label {
        id: label
        width: 100
        height: 92
        text: qsTr("Course Applied For")
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: Text.Wrap
        anchors.verticalCenterOffset: 101
        anchors.horizontalCenterOffset: -133
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 14
    }

    Column {
        id: column
        width: 229
        height: 204
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        anchors.horizontalCenterOffset: 75
        anchors.horizontalCenter: parent.horizontalCenter

        CheckBox {
            id: checkBox
            text: qsTr("B.Tech")
            font.pointSize: 14
            onClicked:
            {
                console.log("Course : " + checkBox.text)
            }
        }

        CheckBox {
            id: checkBox1
            text: qsTr("M.Tech")
            font.pointSize: 14
            onClicked: console.log("Course : " + checkBox1.text)
        }

        CheckBox {
            id: checkBox2
            text: qsTr("B.C.A")
            font.pointSize: 14
            onClicked: console.log("Course : " + checkBox2.text)
        }

        CheckBox {
            id: checkBox3
            text: qsTr("M.C.A")
            font.pointSize: 14
            onClicked: console.log("Course : " + checkBox3.text)
        }

        CheckBox {
            id: checkBox4
            text: qsTr("M.Sc")
            font.pointSize: 14
            onClicked: console.log("Course : " + checkBox4.text)
        }

        CheckBox {
            id: checkBox5
            text: qsTr("B.Sc")
            font.pointSize: 14
            onClicked: console.log("Course : " + checkBox5.text)
        }
    }

    Button {
        id: button
        text: qsTr("Submit")
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 284
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            console.log("Submitted")
        }
    }

    Button {
        id: button1
        width: 80
        height: 25
        text: qsTr("Reset")
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 284
        anchors.horizontalCenterOffset: 96
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            f_name.clear()
            l_name.clear()
            textField2.clear()
            mail.clear()
            textField4.clear()

            radioButton1.checked =  false
            radioButton2.checked =  false

            states.currentIndex=-1
            city.currentIndex=-1

            checkBox.checked = false
            checkBox1.checked = false
            checkBox2.checked = false
            checkBox3.checked = false
            checkBox4.checked = false
            checkBox5.checked = false
            p_obj.fun_reset()
        }
    }
}
