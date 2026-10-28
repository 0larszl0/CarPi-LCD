import QtQuick.Controls
import QtQuick

import QtQuick.Dialogs

/* ----- The Item shown when the available number of app slots has been reached ----- */
Item {
    property Button appSlot: parent

    // - Has the width and height of the parenting slot it's attached to
    height: appSlot.height
    width: appSlot.width

    Image {
        // - The image has the dimensions of the inner part of the slot which houses the app's image
        width: appSlot.imageSlot.width
        height: appSlot.imageSlot.height

        // - Aligns the image to the centre of the slot
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        source: "../../Images/open-padlock.png"
        fillMode: Image.PreserveAspectFit
    }

    MessageDialog {
        id: mess
        text: "Yes"
    }

    // - Connects to the appSlot's onClick signal
    Connections {
        target: appSlot

        function onClicked() {
            mess.visible=true
        }
    }
}
