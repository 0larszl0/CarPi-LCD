import QtQuick 2.2
import QtQuick.Controls
import QtQuick.Layouts

import "Header"

/*
 * The header for the Main.qml file, it contains:
 *   >> The battery status of the system, found at the top left corner
 *   >> The - | + found at the top right corner of the window, that alters the size of the grid within AppView.qml
 */

Item {

    // RowLayout is used to help the child elements position and resize based on the size of the parenting RowLayout.
    // This is slightly different from Row, in which the parent (Row) resizes with the size of the children.
    RowLayout {
        spacing: 0

        /* ----- Battery Status ----- */
        Battery {}

        /* ----- - | + ----- */
        Row {
            spacing: 2

            /*AppViewAdjuster {
                zoomMode: "in"
            }

            AppViewAdjuster {
                zoomMode: "out"
            }
            */
        }
    }
}
