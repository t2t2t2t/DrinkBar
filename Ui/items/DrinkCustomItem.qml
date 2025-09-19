import QtQuick

Item {
    id: root
    Image {
        id: drinkItemsImg
        //source: "c:/Users/kiree/Desktop/qtproj/DrinkBar/Ui/assets/7up-glass.png"
        source: "qrc:/qt/qml/DrinkBar/Ui/assets/cappuccino-180.png"
        anchors.centerIn: parent
        width: parent.width * 0.6
        height: parent.height * 0.6
    }
    Text {
        text: "сupputino"
        color: "white"
        anchors {
            top: drinkItemsImg.bottom
            horizontalCenter: parent.horizontalCenter
        }
        font.pixelSize: 20
    }
}
