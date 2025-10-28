import QtQuick
import Quickshell

import qs.globals
import qs.services

Item {
    id: root

    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height

    Text {
        text: Audio.sinkMuted ? "Muted" : "Volume: " + Math.round(Audio.sinkVolume * 100) + "%"
        color: Colors.foreground
    }
}
