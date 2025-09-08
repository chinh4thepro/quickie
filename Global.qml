pragma Singleton

import QtQuick
import Quickshell

import "Globals"

Singleton {
    readonly property int screenWidth: screen.width
    readonly property int screenHeight: screen.height
}
