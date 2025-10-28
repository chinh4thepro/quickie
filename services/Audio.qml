pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.Pipewire

Singleton {
    id: root

    PwObjectTracker {
        id: tracker
        objects: [Pipewire.nodes.values, Pipewire.defaultAudioSink, Pipewire.defaultAudioSource]
    }

    readonly property var nodes: Pipewire.nodes.values.reduce((acc, node) => {
        if (node.type === 'sink') {
            acc.sinks.push(node);
        } else if (node.type === 'source') {
            acc.sources.push(node);
        }
        return acc;
    }, {
        sinks: [],
        sources: []
    })

    readonly property list<PwNode> sinks: nodes.sinks
    readonly property list<PwNode> sources: nodes.sources

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property PwNode source: Pipewire.defaultAudioSource

    readonly property bool sinkMuted: !!sink?.audio?.muted
    readonly property real sinkVolume: sink.audio.volume

    readonly property bool sourceMuted: !!source?.audio?.muted
    readonly property real sourceVolume: source?.audio?.volume ?? 0
}
