import QtQuick
import QtQml

/*
 * Text, which after a set period of Time, checks upon a non-interactive property to determine whether the value of it
 * has changed
*/


Item {
    required property int timeStep
    required property var textProperty

    width: textBox.contentWidth
    height: textBox.contentHeight

    Timer {
        interval: timeStep  // ms
        repeat: true
        running: true

        onTriggered: textBox.text = clock.current_hhmmss
    }

    Text {
        id: textBox

        text: textProperty

        font.family: applicationFont.name
        font.pointSize: 16
        font.bold: true
        color: "white"

    }
}

