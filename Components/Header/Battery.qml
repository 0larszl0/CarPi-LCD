import QtQuick 2.2
import QtQuick.Controls

import Utils 1.0


Item {
    Battery {
        id: battery

    }

    Label {
        text: "%1%".arg(battery.percent)

    }
}