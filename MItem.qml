import QtQuick 2.12
import QtQuick.Controls 2.3

Item {
    property alias image_source: icon.source
    property alias text_prop: value.text
    property alias font_size: value.font.pointSize
    Image {
        id: icon
    }
    Label {
        id: value
        anchors.left: icon.right
    }
}