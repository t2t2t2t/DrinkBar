import QtQuick

Item {
    id: root
    Rectangle {
        id: hotColdSelectScreen
        anchors {
            top: parent.top
            bottom: parent.bottom
            topMargin: 30
            bottomMargin: 30
        }
        width: parent.width
        color: "transparent"
        Rectangle {
            id: hotButtonRect
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                top: parent.top
                bottom: parent.bottom
            }

            color: "transparent"
            width: parent.width * 0.5
            Image {
                id: hotBtnImage
                source: "qrc:/qt/qml/DrinkBar/Ui/assets/hot-drink.png"
                anchors {
                    top: parent.top
                    topMargin: 50
                    horizontalCenter: parent.horizontalCenter
                }
                width: 256
                height: 256
            }
            Text {
                text: "HOT"
                font.family: "Segoe UI Historic"
                color: "#EC593B"
                anchors {
                    top: hotBtnImage.bottom
                    left: hotBtnImage.left
                    leftMargin: 40
                }
                font {
                    pixelSize: 64
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackView.push("DrinkListScreen.qml")
                }
            }
        }
        Rectangle {
            id: coolButtonRect
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
                top: parent.top
                bottom: parent.bottom
            }
            color: "transparent"
            width: parent.width * 0.5
            Image {
                id: collBtnImage
                source: "qrc:/qt/qml/DrinkBar/Ui/assets/cool-drink.png"
                anchors {
                    top: parent.top
                    topMargin: 50
                    horizontalCenter: parent.horizontalCenter
                }
                width: 256
                height: 256
            }
            Text {
                text: "COLD"
                color: "#428DFF"
                anchors {
                    top: collBtnImage.bottom
                    left: collBtnImage.left
                    leftMargin: 40
                }
                font {
                    pixelSize: 64
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackView.push("DrinkListScreen.qml")
                }
            }
        }
    }
}
