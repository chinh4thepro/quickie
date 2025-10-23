import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.globals

Item {
    id: root

    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    ColumnLayout {
        Layout.alignment: Qt.AlignCenter

        Text {
            id: time
            text: Qt.formatDateTime(clock.date, "hh:mm:ss MM/dd/yyyy")
            color: Colors.foreground
        }
    }
}
