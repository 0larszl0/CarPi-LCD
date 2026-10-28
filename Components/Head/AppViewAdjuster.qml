import QtQuick.Controls
import QtQuick

import "."


Item {

    // - The Item is as large as the Row within it
    width: adjusterRow.width
    height: adjusterRow.height

    Row {
        id: adjusterRow

        anchors.verticalCenter: parent.verticalCenter

        AppViewAdjusterButton {
            zoomIn: false
        }

        AppViewAdjusterButton {
            zoomIn: true
        }
    }

}


