import QtQuick

Item {
    Rectangle {
        anchors {
            top: parent.top
            bottom: parent.bottom
            topMargin: 30
            bottomMargin: 30
        }
        width: parent.width

        color: "transparent"
        Rectangle {
            anchors {
                top: parent.top
                bottom: parent.bottom
                verticalCenter: parent.verticalCenter
            }
            width: parent.width * 0.5
            color: "transparent"
            Image {
                id: drinkImg
                source: "qrc:/qt/qml/DrinkBar/Ui/assets/cappuccino-180.png"
                anchors.fill: parent
                fillMode: Image.pad
            }
        }
        Rectangle {
            id: sizeSelectContainerRec
            anchors {
                top: parent.top
                bottom: parent.bottom
                right: parent.right
            }
            width: parent.width * 0.50
            color: "transparent"
            Rectangle {
                id: sizeSelectPanelRec
                anchors {
                    fill: parent
                    leftMargin: 40
                    rightMargin: 40
                    topMargin: 20
                    bottomMargin: 20
                }
                radius: 5
                color: "#404040"
                Text {
                    id: sizeTitleText
                    text: "Size"
                    color: "white"
                    font.pixelSize: 40
                    anchors {
                        top: parent.top
                        topMargin: 5
                        horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    width: parent.width * 0.9
                    height: 1
                    anchors {
                        top: sizeTitleText.bottom
                        horizontalCenter: parent.horizontalCenter
                    }
                }
                Rectangle {
                    id: selectPannelInnerRect
                    color: "transparent"
                    anchors {
                        top: sizeTitleText.bottom
                        bottom: parent.bottom
                    }
                    width: parent.width
                    Rectangle {
                        id: largeSizeBtnRect
                        height: parent.height / 3
                        width: parent.width
                        color: "transparent"

                        anchors {
                            top: parent.top
                        }
                        Text {
                            text: "Large"
                            color: "White"
                            font.pixelSize: 40
                            anchors {
                                verticalCenter: parent.verticalCenter
                                horizontalCenter: parent.horizontalCenter
                            }
                        }
                        Rectangle {
                            width: parent.width * 0.9
                            height: 1
                            anchors {
                                top: largeSizeBtnRect.bottom
                                horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                    Rectangle {
                        id: mediumSizeBtnRect
                        height: parent.height / 3
                        width: parent.width
                        color: "transparent"

                        anchors {
                            top: largeSizeBtnRect.bottom
                        }
                        Text {
                            text: "Medium"
                            color: "White"
                            font.pixelSize: 40
                            anchors {
                                verticalCenter: parent.verticalCenter
                                horizontalCenter: parent.horizontalCenter
                            }
                        }
                        Rectangle {
                            width: parent.width * 0.9
                            height: 1
                            anchors {
                                top: mediumSizeBtnRect.bottom
                                horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                    Rectangle {
                        id: smallSizeBtnRect
                        height: parent.height / 3
                        width: parent.width
                        color: "transparent"

                        anchors {
                            top: mediumSizeBtnRect.bottom
                        }
                        Text {
                            text: "Small"
                            color: "White"
                            font.pixelSize: 40
                            anchors {
                                verticalCenter: parent.verticalCenter
                                horizontalCenter: parent.horizontalCenter
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
                top: parent.bottom
            }
            Image {
                id: backBttImg
                source: "qrc:/qt/qml/DrinkBar/Ui/assets/back.png"
                anchors {
                    left: parent.left
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
        Rectangle {
            id: resetBttImgTxt

            width: 100
            height: 30
            color: "transparent"
            anchors {
                top: parent.bottom
                right: parent.right
            }
            Image {
                id: resetBttImg
                source: "qrc:/qt/qml/DrinkBar/Ui/assets/restart.png"
                anchors {
                    left: parent.left
                    centerIn: parent
                }
                width: 30
                height: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackView.push(null)
                }
            }
        }
    }
}
