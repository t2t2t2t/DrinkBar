import QtQuick
import QtQuick.Effects

Item {
    id:root
    Image {
        id: sourceItem
        source: "Ui/assets/girl.jpg"
        anchors.fill: parent
        visible: false
    }

    MultiEffect {
        source: sourceItem
        anchors.fill: sourceItem
        maskEnabled: true
        maskSource: mask
    }

    Item {
        id: mask
        width: sourceItem.width
        height: sourceItem.height
        layer.enabled: true
        visible: false

        Rectangle {
            width: sourceItem.width
            height: sourceItem.height
            radius: width / 2
            color: "black"
        }
    }
}
