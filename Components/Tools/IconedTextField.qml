import QtQuick
import QtQuick.Controls


/*
 *  *------------------------------------------------------------------*
 *  |   +-----------+                                   +-----------+  |
 *  |   |           |                                   |           |  |
 *  |<--|   Image   |------------TexField---------------|   Button  |-->|
 *  |   |           |                                   |           |  |
 *  |   +-----------+                                   *-----------*  |
 *  *------------------------------------------------------------------*
 *
 * Creates a TextField with an Image attached to the left of the element, alongside a button on the right hand side for
 * additional functionalities where necessary.
*/


TextField {
    property alias textFieldSubmit: textFieldSubmit
    property alias textFieldIcon: textFieldIcon.source
    property alias textFieldSubmitIcon: textFieldSubmitIcon.source

    leftPadding: textFieldIcon.width
    rightPadding: textFieldSubmit.width

    /* - Create a square-image that is used as an icon for the TextField - */
    Image {
        id: textFieldIcon

        sourceSize.width: parent.height; sourceSize.height: parent.height
    }

    /* - Create a submission button on the right of the  - */
    Button {
        id: textFieldSubmit

        width: parent.height; height: parent.height  // ensures square shape
        anchors.right: parent.right  // positions button to the right of the search field

        Image {
            id: textFieldSubmitIcon

            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
            anchors.centerIn: parent
        }
    }
}