import QtQuick 2.12
import QtQuick.Controls 2.3
import com.hadesk.Player 1.0

Page {
    id: page
    width: 320
    height: 480
    property int left_margin: 5

    Player {
        id: player
    }

    Label {
        id: out_label
        text: "Out: "
        anchors.left: parent.left
        anchors.leftMargin: left_margin
        font.pointSize: song_label.font.pointSize
    }

    MItem {
        id: out_temp
        anchors.left: out_label.right
        image_source: "icons/thermometer.png"
        text_prop: "25°C"
        font_size: song_label.font.pointSize
    }

    MItem {
        id: out_hum
        anchors.left: out_temp.right
        image_source: "icons/water-percent.png"
        text_prop: "45%"
        font_size: song_label.font.pointSize
    }

    Label {
        id: station_label
        anchors.top: out_hum.bottom
        anchors.left: parent.left
        anchors.leftMargin: left_margin
        y: 200
        text: qsTr("Station")
        font.pointSize: 30
    }

    Label {
        id: song_label
        text: qsTr("Now Playing song title")
        font.pointSize: 13
        anchors.top: station_label.bottom
        anchors.left: parent.left
        anchors.leftMargin: left_margin
    }

    MButton {
        id: button_previous
        image_source: "icons/skip-previous.png"
        anchors.left: parent.left
        onClicked: {
            player.previous()
        }
    }

    MButton {
        id: button_play
        image_source: "icons/play.png"
        anchors.left: button_previous.right
        onClicked: {
            player.play()
        }
    }

    MButton {
        id: button_next
        image_source: "icons/skip-next.png"
        anchors.left: button_play.right
        onClicked: {
            player.next()
        }
    }

    MButton {
        id: button_volume_down
        image_source: "icons/volume-medium.png"
        anchors.left: button_next.right
        onClicked: {
            player.volume_down()
        }
    }

    MButton {
        id: button_volume_up
        image_source: "icons/volume-high.png"
        anchors.left: button_volume_down.right
        onClicked: {
            player.volume_up()
        }
    }

    MButton {
        id: button_playlist
        image_source: "icons/format-list-bulleted.png"
        anchors.left: button_volume_up.right
        onClicked: {
            player.show_list()
        }
    }
}
