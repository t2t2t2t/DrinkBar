import QtQuick

Window {
    width: 800
    height: 400
    visible: true
    title: qsTr("Drik Bar")
    color: "#1A1A1A"

    Rectangle {
        id: dateTimeRect

        anchors {
            top: parent.top
            left: topLineReact.left
        }
        height: 30
        width: parent.width * 0.3
        color: "transparent"

        Text {
            id: dataTimeText
            anchors {
                left: topLineReact.left
                verticalCenter: parent.verticalCenter
            }
            text: "07 Jul 2025 | 10:40 AM"
            color: "white"
            font {
                pixelSize: 15
            }
        }
    }

    Rectangle {
        id: topLineReact
        color: "white"
        height: 2
        width: parent.width * 0.95
        anchors {
            top: parent.top
            topMargin: 30
            horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: hotCooldSelectScreen
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
                source: "assets/image/hot-drink_1.png"
                anchors {
                    top: parent.top
                    topMargin: 30
                    horizontalCenter: parent.horizontalCenter
                }
                width: 256
                height: 256
            }
            Text {
                text: "HOT"
                color: "#EC593B"
                anchors {
                    bottom: parent.bottom
                    //verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                font {
                    pixelSize: 64
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
                source: "assets/image/cool-drink_1.png"
                anchors {
                    top: parent.top
                    topMargin: 50
                    horizontalCenter: parent.horizontalCenter
                }
                width: 256
                height: 256
            }
        }
    }

    Rectangle {
        id: bottomLineReact
        color: "white"
        height: 2
        width: parent.width * 0.95
        anchors {
            bottom: parent.bottom
            bottomMargin: 30
            horizontalCenter: parent.horizontalCenter
        }
    }
}
