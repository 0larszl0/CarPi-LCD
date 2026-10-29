/* Some good examples can be found at:
 *  - https://doc.qt.io/qt-6/qtlabsstylekit-index.html
 *  - https://doc.qt.io/qt-6/qml-qt-labs-stylekit-theme.html
 */

import Qt.labs.StyleKit


/* Styles allow the customisation of the appearance of control types found within:
 *      - https://doc.qt.io/qt-6/qml-qt-labs-stylekit-stylablecontrols.html
 *
 * Styles typically configure structural properties including size, padding, radii, etc...
 * On the other hand, themes usually configure visual properties like colour, shadows, etc... Moreover, themes can
 *      override those properties set within a style.
 * As such, there's no formal restriction for this style-theme config convention.
 */
Style {

    light: Theme {
        applicationWindow {
            background.color: "#f7f7f7"

        }
    }

    dark: Theme {
        applicationWindow {
            background.color: "#141414"

        }
    }
}