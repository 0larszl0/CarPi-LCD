import QtQuick

import 'Slots'
import '.'


AppView {
    id: appOverview

    property int num_rows: 1

    appGrid: Grid {
        rows: num_rows

        AppSlot { appView: appOverview; Settings {} }
        AppSlot { appView: appOverview; AppStore {} }
    }
}

