import QtQuick
import QtQml

import Utils


Item {

    width: clockTextBox.contentWidth
    height: clockTextBox.contentHeight

    Timer {
        interval: 1000  // ms
        repeat: true
        running: true

        onTriggered: clockTextBox.text = clock.current_hhmmss
    }

    Clock { id: clock }

    Text {
        id: clockTextBox

        text: clock.current_hhmmss
        font.pointSize: 16
        font.bold: true
        color: "white"
    }

}
