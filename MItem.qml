import QtQuick 2.12
import QtQuick.Controls 2.3

Row {
    property alias image_source: icon.source
    property alias text_value: value.text
    property alias font_size: value.font.pointSize
    Image {
        id: icon
    }
    Label {
        id: value
        anchors.bottom: parent.bottom
    }
}