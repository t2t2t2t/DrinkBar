import QtQuick
import QtQuick.Controls

Window {
    width: 800
    height: 480
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
        color: "white"
        height: 2
        width: parent.width * 0.95
        anchors {
            top: parent.top
            topMargin: 30
            horizontalCenter: parent.horizontalCenter
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "HotColdSelectScreen.qml"
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
