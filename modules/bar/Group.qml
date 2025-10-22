import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.globals

Item {
    id: root

    implicitWidth: layout.implicitWidth + Global.barContentPadding
    implicitHeight: Global.barHeight

    Rectangle {
        id: background
        anchors {
            fill: parent
            topMargin: Global.barMargin
            bottomMargin: Global.barMargin
            leftMargin: Global.barMargin
            rightMargin: Global.barMargin
        }
        color: Colors.foreground
    }

    GridLayout {
        id: layout

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            margins: Global.barContentPadding
        }

        columnSpacing: Global.barContentSpacing
        rowSpacing: 12
    }
}
