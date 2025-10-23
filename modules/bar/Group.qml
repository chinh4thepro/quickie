import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.globals

Item {
    id: root

    property int padding: Global.borderWidth + Global.barContentPadding

    implicitWidth: layout.implicitWidth + Global.barContentPadding * 2
    implicitHeight: Global.barHeight

    Rectangle {
        id: background
        anchors {
            fill: parent
            topMargin: root.padding
            bottomMargin: root.padding
            leftMargin: 0
            rightMargin: 0
        }
        color: Colors.color3
    }

    GridLayout {
        id: layout

        columns: -1

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            right: parent.right
            margins: root.padding
        }

        columnSpacing: 4
        rowSpacing: 12
    }
}
