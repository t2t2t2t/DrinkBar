import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "Ui/items"

Item {
    Rectangle {
        id: drinkListScreen
        width: parent.width
        anchors {
            top: parent.top
            bottom: parent.bottom
            topMargin: 30
            bottomMargin: 30
        }
        color: "transparent"

        GridLayout {
            anchors.fill: parent
            rows: 2
            columns: 4
            rowSpacing: 5
            columnSpacing: 5
            Repeater {
                id: drinkRepeter
                model: 8
                Rectangle {
                    color: "transparent"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    radius: 10
                    Rectangle {
                        width: parent.width
                        height: parent.height
                        color: "transparent"
                        DrinkCustomItem {
                            id: drinkCustomItems
                            anchors.fill: parent
                        }
                    }
                }
            }
        }
    }
    Rectangle {
        id: backBttImgTxt

        width: 100
        height: 30
        color: "transparent"
        anchors {
            top: drinkListScreen.bottom
            left: drinkListScreen.left
        }
        Image {
            id: backBttImg
            source: "qrc:/qt/qml/DrinkBar/Ui/assets/back.png"
            anchors{
                left:parent.left
                centerIn: parent
            }
            width: 30
            height: 30
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stackView.push("HotColdSelectScreen.qml")
            }
        }
    }
}
