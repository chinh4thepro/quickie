import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.globals

Scope {
    id: bar

    PanelWindow {
        id: barRoot

        anchors {
            top: false
            bottom: true
            left: true
            right: true
        }

        margins {
            top: 0
            bottom: Global.marginSize
            left: Global.marginSize
            right: Global.marginSize
        }

        color: "transparent"

        implicitHeight: Global.barHeight

        MouseArea {
            id: mouseArea
            hoverEnabled: true
            anchors {
                fill: parent
            }
        }

        Content {
            id: content

            implicitHeight: Global.barHeight
            anchors {
                top: parent.top
                bottom: parent.bottom
                left: parent.left
                right: parent.right
            }
        }
    }
}
