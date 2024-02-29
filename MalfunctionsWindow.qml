import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Window 2.2

Window {
    id: malfunctionsWindow
    signal signalExit
    signal signal1_mal
    signal signal2_mal
    signal signal3_mal
    signal signal4_mal
    width: 640
    height: 480
    minimumWidth: 480
    minimumHeight: 360
    visible: false
    color:"#DCDCDC"
    title: qsTr("Интерактивное электронное техническое руководство (ИЭТР)")
    Component.onCompleted: {
           x = Screen.width / 2 - width / 2
           y = Screen.height / 2 - height / 2
    }

    Button{
        id:button_exit
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 15
        width: 90
        height: 20
        background: Rectangle{
            color: "#008080"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        Text{
            anchors.centerIn: parent
            text: "Выход в меню"
            color: "#FFFFFF"
        }
        onClicked: {
            mainwindow.show()
            malfunctionsWindow.hide()
        }

    }

    Button {
        id: malfbut1
        anchors.top: parent.top
        anchors.topMargin: malfunctionsWindow.height/2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
        background: Rectangle{
            color: "#c7ecee"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        text: "Причина №1: Приложение не реагирует на команды"
        onClicked: {
            signal1_mal()
        }
    }

    Button {
        id: malfbut2
        anchors.top: malfbut1.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
        background: Rectangle{
            color: "#c7ecee"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        text: "Причина №2: Приложение запускается, но выключается"
        onClicked: {
            signal2_mal()
        }
    }

    Button{
        id: malfbut3
        anchors.top: malfbut2.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
        background: Rectangle{
            color: "#c7ecee"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        text: "Причина №3: Не запускается программа"
        onClicked: {
            signal3_mal()
        }
    }

    Button{
        id: malfbut4
        anchors.top: malfbut3.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
        background: Rectangle{
            color: "#c7ecee"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        text: "Причина №4: Компьютер не работает, вследствие чего невозможно пользоваться программой"
        onClicked: {
            signal4_mal()
        }
    }


}
