import QtQuick
import QtQml

import Head

/*
Think about using REACTIVE PROPERTIES

https://doc.qt.io/qtforpython-6/tutorials/reactiveproperties/reactiveproperties.html

*/


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
        //font.family: ""

        font.family: applicationFont.name
        //font.pointSize: 26

    }

}
