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
            topMargin: Global.borderWidth
            bottomMargin: Global.borderWidth
            leftMargin: Global.borderWidth
            rightMargin: 0
        }

        spacing: Global.barContentSpacing

        Group {
            id: leftGroup

            Clock {}
        }
    }

    Row {
        id: center

        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            topMargin: Global.borderWidth
            bottomMargin: Global.borderWidth
            leftMargin: 0
            rightMargin: 0
        }

        spacing: Global.barContentSpacing

        Group {
            id: centerGroup

            Clock {}
        }
    }

    Row {
        id: right

        anchors {
            top: parent.top
            bottom: parent.bottom
            left: center.right
            right: parent.right
            topMargin: Global.borderWidth
            bottomMargin: Global.borderWidth
            leftMargin: 0
            rightMargin: Global.borderWidth
        }

        spacing: Global.barContentSpacing

        Group {
            id: rightGroup

            Clock {}
        }
    }
}
