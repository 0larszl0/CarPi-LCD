import QtQuick.Controls
import QtQuick


Button {
    required property bool zoomIn

    width: 25
    height: header.height

    text: zoomIn ? "+" : "-"

    font.pointSize: 16
    font.bold: true

    background: Rectangle {
        color: "black"
        border.color: "grey"
        border.width: 1

        topLeftRadius: zoomIn ? 0 : 7
        bottomLeftRadius: zoomIn ? 0 : 7
        topRightRadius: zoomIn ? 7 : 0
        bottomRightRadius: zoomIn ? 7 : 0
    }

}
