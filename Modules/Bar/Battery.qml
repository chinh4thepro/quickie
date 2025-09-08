import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.UPower

import "../../Globals"

Rectangle {
    id: root

    anchors.centerIn: parent

    readonly property var state: UPower.displayDevice.state
    readonly property bool isCharging: state == UPowerDeviceState.Charging
    readonly property var isPlugged: isCharging || state == UPowerDeviceState.PendingCharge
    readonly property real percent: UPower.displayDevice.percentage

    color: "transparent"

    Text {
        id: battery
        text: Math.round(root.percent * 100)
        color: Colors.foreground
    }
}
