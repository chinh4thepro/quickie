import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland

import "../../Globals"

PanelWindow {
    id: root

    aboveWindows: true

    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }

    exclusionMode: ExclusionMode.Ignore
    WlrLayershell.layer: WlrLayer.Overlay
    // WlrLayershell.keyboardFocus: WlrKeyboardFocus.Exclusive

    color: "transparent"

    Rectangle {
        anchors.fill: parent
        color: "transparent"

        MouseArea {
            anchors.fill: parent
            onClicked: Qt.quit()

            Rectangle {
                anchors.centerIn: parent

                width: parent.width / 1.5
                height: parent.height / 3.5

                color: Colors.backgrounda

                border {
                    width: 4
                    color: Colors.foreground
                }
            }
        }
    }
}
