import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Window 2.2

Window {
    id: malfunctionsWindow
    signal signalExit
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


    Text{
        text: "К сожалению, нам не удалось устранить вашу проблему. Пожалуйста, обратитесь к электрику! Не нарушайте нормы электробезопасности, это опасно для жизни!"
        font.family: "Verdana"      // семейство шрифтов
        font.pixelSize: 14          // высота шрифта
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.bottom: parent.bottom
        anchors.topMargin: 70
        wrapMode: Text.Wrap
        horizontalAlignment: Text.AlignHCenter
    }
}
