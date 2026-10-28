import QtQuick.Controls
import QtQuick.Layouts
import QtQuick

import "Head"

/*
 * The header for the Main.qml file, it contains:
 *   >> The battery status of the system, found at the top left corner
 *   >> The - | + found at the top right corner of the window, that alters the size of the grid within AppView.qml
 */

Item {
    id: header

    /* ----- Battery Status ----- */
    Battery {
        anchors.left: parent.left  // anchors the left-side to the header's left side to allow for a margin
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }

    /* ----- - | + ----- */
    AppViewAdjuster {
        anchors.right: parent.right
        anchors.rightMargin: 10
    }

    /* ----- Border Bottom ----- */
    Rectangle {
        width: header.width
        height: 1

        color: "grey"

        anchors.bottom: header.bottom
    }

}
