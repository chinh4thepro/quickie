import QtQuick
import QtQuick.Layouts
import Quickshell

import "../../Globals"
import "../PowerMenu"

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

                Time {}
            }
            RowLayout {
                Layout.alignment: Qt.AlignCenter

                Time {}
                Battery {}
            }
            RowLayout {
                Layout.alignment: Qt.AlignRight

                Time {}
            }
        }
    }
}
