import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.UPower

import qs.globals

Item {
    id: root
    readonly property var state: UPower.displayDevice.state
    readonly property bool isCharging: state == UPowerDeviceState.Charging
    readonly property var isPlugged: isCharging || state == UPowerDeviceState.PendingCharge
    readonly property real percent: UPower.displayDevice.percentage
    readonly property bool isBattery: UPower.displayDevice.isLaptopBattery

    implicitWidth: childrenRect.width

    Text {
        id: battery
        text: isBattery ? Math.round(root.percent * 100) : undefined
        color: Colors.foreground
    }
}
