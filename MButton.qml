import QtQuick 2.12
import QtQuick.Controls 2.3

Button {
    id: button_play
    anchors.bottom: parent.bottom
    anchors.topMargin: 6
    property alias image_source: image.source
    width: 53
    height: 48

    Image {
        id: image
        anchors.rightMargin: 0
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    background: Rectangle {
        color: "#303030"
    }
}