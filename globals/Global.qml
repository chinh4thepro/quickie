pragma Singleton

import QtQuick
import Quickshell

Singleton {
    readonly property int screenWidth: screen.width
    readonly property int screenHeight: screen.height
}
