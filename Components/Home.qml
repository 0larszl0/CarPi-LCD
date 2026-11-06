import QtQuick

import "Apps"
import Home


Item {
    anchors.fill: parent  // ensures that this element uses all of the space given by the loader.

    GridView {
        id: homeGrid

        model: ExistingAppModel {}  // takes the model from CustomQML/home.py

        // Centre the grid vertically, by ensuring that the entire grid height is only as tall as the content it holds
        width: parent.width
        height: contentHeight
        anchors.verticalCenter: parent.verticalCenter

        cellWidth: 100
        cellHeight: 100

        delegate: AppSlot {
            width: homeGrid.cellWidth  // homeGrid must be specified, parent does not work properly within delegate
            height: homeGrid.cellHeight

            AppTemplate { appImagePath: imagePath }

            onClicked: {
                body.source = source

            }
        }
    }
}
