import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Window 2.2

Window {
    id: malfunctionsWindow
    signal signalExit
    signal signalYes
    signal signalNo
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
            signalExit()
            mainwindow.show()
        }

    }

    Button{
        id: b_yes
        anchors.bottom: parent.bottom  // у нижней границы контейнера
        anchors.right: parent.right   // у правой границы контейнера
        anchors.margins: 50
        width: 120
        height: 40
        background: Rectangle{
            color: "#90EE90"                // цвет фона кнопки
            border.color: "#3CB371"         // цвет границы
            radius: 5
        }
        Text{
            anchors.centerIn: parent
            text: "Да"
            //color: "#FFFFFF"
        }
        onClicked: {
            signalYes()
            mainwindow.show()
        }
    }

    Button{
        id: b_no
        anchors.bottom: parent.bottom  // у нижней границы контейнера
        anchors.left: parent.left   // у правой границы контейнера
        anchors.margins: 50
        width: 120
        height: 40
        background: Rectangle{
            color: "#CD5C5C"                // цвет фона кнопки
            border.color: "#B22222"         // цвет границы
            radius: 5
        }
        Text{
            anchors.centerIn: parent
            text: "Нет"
            //color: "#FFFFFF"
        }
        onClicked: {
            signalNo()
        }
    }

}
