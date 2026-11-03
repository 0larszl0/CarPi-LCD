import QtQuick.Controls
import QtQuick


/* ----- Container for a selection of  ----- */
Item {
    property alias appGrid: appGrid.sourceComponent

    anchors.fill: parent

    Loader {
        id: appGrid

        anchors.verticalCenter: parent.verticalCenter
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