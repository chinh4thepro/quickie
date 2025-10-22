import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.globals
import "components"

PanelWindow {
    id: root

    anchors {
        top: false
        bottom: true
        left: true
        right: true
    }

    margins {
        top: 0
        bottom: 25
        left: 25
        right: 25
    }

    implicitHeight: screen.height / 20

    color: "transparent"

    Rectangle {
        id: bar

        anchors.fill: parent

        border {
            color: Colors.foreground
            width: 4
        }

        color: Colors.backgrounda

        RowLayout {
            anchors.fill: parent

            RowLayout {
                Layout.alignment: Qt.AlignLeft

                Clock {}
            }
            RowLayout {
                Layout.alignment: Qt.AlignCenter

                Clock {}
                Battery {}
            }
            RowLayout {
                Layout.alignment: Qt.AlignRight

                Clock {}
            }
        }
    }
}
