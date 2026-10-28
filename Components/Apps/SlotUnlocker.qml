import QtQuick.Dialogs

import '.'

/* ----- The Item shown when the available number of app slots has been reached ----- */

AppTemplate {
    appImagePath: "../../Images/open-padlock.png"
    appActivation: function() {
        mess.visible = true
    }

    MessageDialog {
        id: mess
        text: "Yes"

        flags: Qt.FramelessWindowHint
    }
}
