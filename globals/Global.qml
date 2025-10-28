pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root

    readonly property int animationDuration: 500

    readonly property int barContentPadding: 4
    readonly property int barContentSpacing: 4
    readonly property int barHeight: 50
    readonly property int barMargin: 4

    readonly property int borderWidth: 4

    readonly property int marginSize: 25
}
