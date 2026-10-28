import QtQuick.Controls
import QtQuick

import "Apps"
import "."


/* ----- Main App View Container ----- */
Rectangle {

    id: appView

    anchors.fill: parent
    anchors.margins: height / 10
    anchors.rightMargin: 0

    color: "#232323"

    border.color: "#3d3d3d"
    border.width: 1
    radius: 10

    /* ----- App Grid ----- */
    Grid {
        anchors.verticalCenter: parent.verticalCenter
        rows: 1

        AppSlot { SlotUnlocker {} }

    }

    /* ----- Next page button ----- */
    Button {
        height: parent.height / 7
        width: parent.width / 17

        text: ">"

        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

    }

    /* ----- Last page button ----- */
    Button {
        height: parent.height / 7
        width: parent.width / 17

        text: "<"

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

    }

}