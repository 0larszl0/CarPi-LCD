import QtQuick.Controls
import QtQuick 2.2

import Utils 1.0


Item {

    // - The item is only as large as the Text contained within it
    width: percentage.contentWidth
    height: percentage.height

    Battery {
        id: battery

    }

    Text {
        id: percentage

        text: "%1%".arg(battery.percent)
        font.bold: true
        color: "white"
        font.pointSize: 16

    }

}