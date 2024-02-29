import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls

Window {
    id: mainwindow
    width: 640
    height: 480
    minimumWidth: 480
    minimumHeight: 360
    visible: true
    color:"#DCDCDC"
    title: qsTr("Интерактивное электронное техническое руководство (ИЭТР)")
    Component.onCompleted: {
        x = Screen.width / 2 - width / 2
        y = Screen.height / 2 - height / 2
    }

    Image {
         id:moscowImage
         anchors.top: parent.top
         anchors.left: parent.left
         anchors.right: parent.right
         anchors.bottom: parent.bottom
         anchors.bottomMargin: 180
         source: "images/Moscow.jpg"
    }

    Text {
        id: idtext
        text: qsTr("Интерактивное электронное техническое руководство (ИЭТР) для программного приложения, предназначенного для оценки и прогнозирования численности и структуры автопарка города Москва")
        font.family: "Verdana"      // семейство шрифтов
        font.pixelSize: 14          // высота шрифта
        anchors.top: moscowImage.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.bottom: parent.bottom
        anchors.topMargin: 10
        wrapMode: Text.Wrap
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: malfunctions
        anchors.top: moscowImage.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.bottom: parent.bottom
        anchors.topMargin: 80
        anchors.margins: 70
        background: Rectangle{
            color: "#c7ecee"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        text: "Устранение возможных неисправностей"

        onClicked: {
            malfunctionsWindow.show()
            mainwindow.hide()
        }
    }

    Button {
        anchors.top: malfunctions.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 70
        background: Rectangle{
            color: "#c7ecee"                // цвет фона кнопки
            border.color: "#01a3a4"         // цвет границы
            radius: 5
        }
        text: "Регламентные работы"
        onClicked: {
            reglamentWindow.show()
            mainwindow.hide()
        }
    }

    MalfunctionsWindow {
            id: malfunctionsWindow

            // Обработчик сигнала на открытие основного окна
            onSignalExit: {
                malfunctionsWindow.close()     // Закрываем первое окно
                mainWindow.show()       // Показываем основное окно
            }
            onSignal1_mal: {
                malfunctionsWindow.close()
                qwestionWindow11.show()
            }
            onSignal2_mal: {
                malfunctionsWindow.close()
                qwestionWindow21.show()
            }
            onSignal3_mal: {
                malfunctionsWindow.close()
                qwestionWindow31.show()
            }
            onSignal4_mal: {
                malfunctionsWindow.close()
                qwestionWindow41.show()
            }
    }

    ReglamentWindow{
        id:reglamentWindow
        // Обработчик сигнала на открытие основного окна
        onSignalExit: {
            reglamentWindow.close()     // Закрываем первое окно
            mainWindow.show()       // Показываем основное окно
        }
    }

    EngineerWindow{
        id:engineerWindow
        onSignalExit: {
            engineerWindow.close()     // Закрываем первое окно
        }
    }

    ElectricianWindow{
        id: electricianWindow
        onSignalExit: {
            electricianWindow.close()     // Закрываем первое окно
        }
    }

    QuestionWindow{
        id: qwestionWindow11
        Text{
            text: "Перезагрузите компьютер. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow11.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow11.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow11.close()     // Закрываем первое окно
            qwestionWindow12.show()
        }
    }

    QuestionWindow{
        id: qwestionWindow12
        Text{
            text: "Переключите мышь в другой USB порт. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow12.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow12.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow12.close()     // Закрываем первое окно
            qwestionWindow13.show()
        }
    }
    QuestionWindow{
        id: qwestionWindow13
        Text{
            text: "Подключите другую мышь. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow13.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow13.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow13.close()     // Закрываем первое окно
            engineerWindow.show()
        }
    }












    QuestionWindow{
        id: qwestionWindow21
        Text{
            text: "Перезагрузите компьютер. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow21.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow21.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow21.close()     // Закрываем первое окно
            qwestionWindow22.show()
        }
    }

    QuestionWindow{
        id: qwestionWindow22
        Text{
            text: "Очистите КЭШ памяти. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow22.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow22.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow22.close()     // Закрываем первое окно
            qwestionWindow23.show()
        }
    }
    QuestionWindow{
        id: qwestionWindow23
        Text{
            text: "Обновите или переустановите программу. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow23.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow23.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow23.close()     // Закрываем первое окно
            engineerWindow.show()
        }
    }




    QuestionWindow{
        id: qwestionWindow31
        Text{
            text: "Освободите место на диске. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow31.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow31.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow31.close()     // Закрываем первое окно
            qwestionWindow32.show()
        }
    }

    QuestionWindow{
        id: qwestionWindow32
        Text{
            text: "Отключите антивирус. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow32.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow32.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow32.close()     // Закрываем первое окно
            qwestionWindow33.show()
        }
    }
    QuestionWindow{
        id: qwestionWindow33
        Text{
            text: "Обновите или переустановите программу. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow33.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow33.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow33.close()     // Закрываем первое окно
            engineerWindow.show()
        }
    }






    QuestionWindow{
        id: qwestionWindow41
        Text{
            text: "Проверьте подключение вашего компьютера к сети. Если он отключен, то вставьте провод в розетку. Проблема устранена?"
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

        onSignalExit: {
            qwestionWindow41.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow41.close()     // Закрываем первое окно
        }

        onSignalNo: {
            qwestionWindow41.close()     // Закрываем первое окно
            qwestionWindow42.show()
        }
    }

    QuestionWindow{
        id: qwestionWindow42
        Text{
            text: "Электричество исправно?"
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

        onSignalExit: {
            qwestionWindow42.close()     // Закрываем первое окно
        }

        onSignalYes: {
            qwestionWindow42.close()     // Закрываем первое окно
            engineerWindow.show()
        }

        onSignalNo: {
            qwestionWindow42.close()     // Закрываем первое окно
            electricianWindow.show()
        }
    }

}


