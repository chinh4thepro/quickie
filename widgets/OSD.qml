import QtQuick
import Quickshell
import Quickshell.Wayland

import qs.globals

PanelWindow {
    id: root

    property alias content: contentLoader.content
    property alias contentLoader: contentLoader
    property bool isVisible: false
    property int hiddenLength: 2000
    property bool isInteractable: false
    property real osdWidth: Global.iconSize + Global.padding * 2
    property real osdHeight: Global.iconSize + Global.padding * 2

    signal showOsd
    signal hideOsd

    visible: isVisible
    WlrLayershell.layer: WlrLayershell.Overlay
    WlrLayershell.exclusiveZone: -1
    WlrLayershell.keyboardFocus: WlrKeyboardFocus.None
    color: "transparent"
}
