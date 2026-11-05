import QtQuick.Controls
import QtQuick


Button {
    property alias imageSlot: imageSlot

    background: Rectangle {
        id: appSlot

        border.color: "red"
        border.width: 2
        radius: 10

        Rectangle {
            id: imageSlot

            width: parent.width * 0.75
            height: parent.height * 0.75

            color: "blue"

            border.width: parent.border.width
            border.color: parent.border.color
            radius: parent.radius

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

        }
    }
}
