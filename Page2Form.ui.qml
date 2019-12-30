import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4

Page {
    id: page
    width: 320
    height: 480

    MItem {
        id: out_temp
        anchors.left: parent.left
        image_source: "icons/thermometer.png"
        text_prop: "25°C"
        font_size: station_label.font.pointSize
    }

    MItem {
        id: out_hum
        anchors.left: parent.left
        anchors.top: out_temp.bottom
        image_source: "icons/water-percent.png"
        text_prop: "45%"
        font_size: station_label.font.pointSize
    }

    Label {
        id: station_label
        anchors.left: parent.left
        y: 200
        text: qsTr("Station")
        font.pointSize: 30
    }

    Label {
        id: song_label
        text: qsTr("Now Playing song title")
        font.pointSize: 14
        anchors.top: station_label.bottom
        anchors.left: parent.left
    }

    MButton {
        id: button_previous
        image_source: "icons/skip-previous.png"
        anchors.left: parent.left
    }

    MButton {
        id: button_play
        image_source: "icons/play.png"
        anchors.left: button_previous.right
    }

    MButton {
        id: button_next
        image_source: "icons/skip-next.png"
        anchors.left: button_play.right
    }

    MButton {
        id: button_volume_down
        image_source: "icons/volume-medium.png"
        anchors.left: button_next.right
    }

    MButton {
        id: button_volume_up
        image_source: "icons/volume-high.png"
        anchors.left: button_volume_down.right
    }

    MButton {
        id: button_playlist
        image_source: "icons/format-list-bulleted.png"
        anchors.left: button_volume_up.right
    }
}
