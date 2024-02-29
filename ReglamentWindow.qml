import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Window 2.2
import QtQuick
import Qt.labs.qmlmodels

Window{
    id:reglamentWindow
    signal signalExit
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    maximumWidth: 640
    maximumHeight: 480
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
            reglamentWindow.hide()
        }

    }

    Text{
        id:text
        text:"Список регламентных работ"
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.right: parent.right
        font.family: "Verdana"      // семейство шрифтов
        font.pixelSize: 18          // высота шрифта
        wrapMode: Text.Wrap
    }

    Image {
            id:reglImage
            anchors.top: parent.top
            anchors.topMargin: 90
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 40
            anchors.bottomMargin: 100
            source: "images/Reglament.jpg"
    }

    Text{
        id:text2
        text:"Советуем ознакомиться со следующими источниками:"
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 400
        anchors.left: parent.left
        anchors.right: parent.right
        font.family: "Verdana"      // семейство шрифтов
        font.pixelSize: 14          // высота шрифта
        wrapMode: Text.Wrap
    }

    Text {
            text: "1. Ссылка на <a href='https://tecspo.ru/upload/iblock/aaa/aaa399c96484291ce5ce22a9cd92cde7.pdf'>регламент</a> резервного копирования."
            anchors.top: parent.top
            font.family: "Verdana"      // семейство шрифтов
            font.pixelSize: 12          // высота шрифта
            wrapMode: Text.Wrap
            anchors.topMargin: 420
            anchors.left: parent.left
            anchors.margins: 40
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            textFormat: Text.RichText
            onLinkActivated: Qt.openUrlExternally(link)
        }
    /*Rectangle{
        id: rect
        color: "#FFFFFF"
        anchors.top: parent.top
        anchors.topMargin: 90
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        anchors.left: parent.left
        anchors.right: parent.right
        TableModel{
                id: userTable
                TableModelColumn { display: "name" }
                TableModelColumn { display: "duration" }
                TableModelColumn { display: "description" }
                rows:[
                    {name: "Резервное копирование", duration: "1 раз в неделю", description: "Выполнение резервного копирования данных приложения для предотвращения потери информации в случае сбоев в системе"},
                    {name: "Уборка рабочего места", duration: "1 раз в 2 недели", description: "Влажная уборка стола, рабочего места, предметов и устройств, необходимых для работы"},
                    {name: "Обновление приложения", duration: "1 раз в месяц", description: "Обновить приложение, если доступна более новая версия для исправления ошибок, улучшения производительности"},
                    {name: "Обновление драйверов ", duration: "1 раз в месяц", description: "Обновление драйверов для повышения производительности, надёжности устройства"},

                ]
        }

        HorizontalHeaderView {
                id: horizontalHeader
                anchors.left: tableView.left
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.margins: 40
                syncView: tableView
                model: ["Название ", "Период", "Описание"]
                delegate: Text {
                    text: modelData
                    font.bold: true
                }
        }

        TableView {
                id: tableView
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.top: horizontalHeader.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                model: userTable
                rowSpacing: 9
                columnSpacing: 9
                resizableColumns: true
                delegate: Rectangle {
                            implicitHeight: 25
                            implicitWidth: 60
                            color: row==tableView.currentRow ? "lightgray": "white"

                            Text {
                                //horizontalAlignment: Text.AlignHCenter
                                text: model.display
                                font.family: "Verdana"
                                font.pixelSize: 12
                                wrapMode: Text.Wrap
                                anchors.left: rect.left
                                anchors.right: rect.right
                            }
                }

                property var columnWidths: [200,200,200]    // два столбца шириной по 80 и 50

                    columnWidthProvider: function(column) {
                        // получаем неявную длину
                        const implicitWidth = implicitColumnWidth(column)
                        // если неявная ширина больше, чем та, которую мы хотим установить
                        if (implicitWidth > columnWidths[column]) return implicitWidth;
                        return columnWidths[column]
                    }
        }
    }*/
}
