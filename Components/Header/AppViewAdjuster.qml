import QtQuick.Controls
import QtQuick


Button {
    required property zoomMode: "in"

    states: [
        State {
            name: "zoomIn"
            when: (zoomMode == "in")
            PropertyChanges {
                text: "-"
            }
        },
        State {
            name: "zoomOut"
            when: (zoomMode == "out")
            PropertyChanges {
                text: "+"
            }
        }
    ]
}

