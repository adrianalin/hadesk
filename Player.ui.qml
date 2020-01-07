import QtQuick 2.12
import QtQuick.Controls 2.3

Page {
    id: page
    width: 320
    height: 480
    property int margin: 10
    property int fontSize: 15

    Rectangle {
        id: out_card
        anchors.top: parent.top
        anchors.topMargin: margin
        anchors.bottomMargin: margin
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - margin * 2
        height: out_temp.height * 2
        color: "#424242"

        Label {
            id: out_label
            anchors.top: parent.top
            text: "Out"
            font.pointSize: fontSize
            width: parent.width
            clip: true
            background: Rectangle {
                color: "#0d6a53"
            }
        }

        MItem {
            id: out_temp
            anchors.top: out_label.bottom
            anchors.left: parent.left
            image_source: "icons/thermometer.png"
            text_value: "25°C"
            font_size: fontSize
        }

        MItem {
            id: out_hum
            anchors.left: out_temp.right
            anchors.top: out_label.bottom
            image_source: "icons/water-percent.png"
            text_value: "45%"
            font_size: fontSize
        }
    }


    Rectangle {
        id: player_card
        anchors.top: out_card.bottom
        anchors.topMargin: margin
        anchors.bottomMargin: margin
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - margin * 2
        height: button_previous.height * 2
        color: "#424242"

        Label {
            id: station_label
            anchors.top: parent.top
            text: player.media_title
            font.pointSize: fontSize
            width: parent.width
            clip: true
            background: Rectangle {
                color: "#0d6a53"
            }
        }

        MButton {
            id: button_previous
            image_source: "icons/skip-previous.png"
            anchors.left: parent.left
            onClicked: {
                player.media_previous_track()
            }
        }

        MButton {
            id: button_play
            image_source: player.state == "play"? "icons/pause.png" : "icons/play.png"
            anchors.left: button_previous.right
            onClicked: {
                if (player.state == "play") {
                    player.media_pause()
                } else {
                    player.media_play()
                    if (player.state == "stop")
                        player.turn_on()
                }
            }
        }

        MButton {
            id: button_next
            image_source: "icons/skip-next.png"
            anchors.left: button_play.right
            onClicked: {
                player.media_next_track()
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
                player.source_list()
            }
        }
    }
}
