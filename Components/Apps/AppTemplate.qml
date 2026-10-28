import QtQuick.Controls
import QtQuick

/* ----- A template that holds the primary logic for creating your own app ----- */

Item {
    required property string appImagePath
    required property var appActivation  // a procedure to call when the slot is pressed

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

        source: appImagePath
        fillMode: Image.PreserveAspectFit
    }

    // - Connects to the appSlot's onClick signal
    Connections {
        target: appSlot

        function onClicked() {
            appActivation()
        }
    }
}
