import QtQuick
import QtQuick.Controls

Window {
    width: 800
    height: 150
    visible: true
    title: qsTr("Drik Bar")
    color: "#1A1A1A"
    Component.onCompleted: {
        testqml.timerMessage()
    }

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
                left: parent.left
                verticalCenter: parent.verticalCenter
            }
            text: "07 Jul 2025 | 10:40 AM"
            font.family: "Segoe UI Emoji"
            color: "white"
            font {
                pixelSize: 15
            }
        }
    }
    Rectangle {
        id: topLineReact
        color: "#2B5279"
        height: 100
        width: parent.width * 0.95
        anchors {
            top: parent.top
            topMargin: 30
            horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            width: 100
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
            radius: 50

            GirlAva {
                id: ava
                anchors.fill: parent
            }

            Text {
                anchors {
                    left: ava.right
                    top: parent.top
                    topMargin: 10
                    leftMargin: 10
                }
                color: "#E3EDED"
                text: "Таня"
                font.pixelSize: 18
            }

            Text {
                anchors {
                    left: ava.right
                    bottom: parent.bottom
                    bottomMargin: 20
                    leftMargin: 10
                }

                color: "#E3EDED"
                text: "создать с++ класс с методом доступным для QML и вызвать его из QML при запуске"
                font.pixelSize: 15
            }
        }
        opacity: buttonMouseArea.containsMouse ? 0.75 : 1
        MouseArea {
            id: buttonMouseArea
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                testqml.timerMessage()
            }
        }
    }

    // Rectangle {
    //     id: topLineReact
    //     color: "white"
    //     height: 2
    //     width: parent.width * 0.95
    //     anchors {
    //         top: parent.top
    //         topMargin: 30
    //         horizontalCenter: parent.horizontalCenter
    //     }

    // }

    // StackView {
    //     id: stackView
    //     anchors.fill: parent
    //     initialItem: "SideSelectScreen.qml"
    // }
}
