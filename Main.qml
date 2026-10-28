/*****************************************************************************
* CarPi-LCD
* Copyright (C) 2026 Oliver Winhammar
*
* This file is part of CarPi-LCD.
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <https://www.gnu.org/licenses/>.
*
****************************************************************************/

import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import "Components"


ApplicationWindow {
    id: root

    width: 600//Screen.width
    height: 400

    visible: true  // by default application window's are not visible

    color: "#141414"  // the window's background colour

    // flags: Qt.FramelessWindowHint  // removes the frame that comes with a window

    header: Header {
        width: root.width
        height: root.height / 10
    }

    AppView {}


}