import QtQuick
import Quickshell

import qs.globals
import qs.modules.bar.components

Item {
    id: root

    Rectangle {
        id: background
        anchors {
            fill: parent
        }
        color: Colors.background
        border {
            color: Colors.foreground
            width: Global.borderWidth
        }
    }

    Row {
        id: left

        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: center.right
        }
    }

    Row {
        id: center

        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
    }

    Row {
        id: right

        anchors {
            top: parent.top
            bottom: parent.bottom
            left: center.right
            right: parent.right
        }
    }
}
