import QtQuick 2.12
import QtQuick.Controls 2.3

Button {
    id: control
    anchors.bottom: parent.bottom
    property alias image_source: image.source
    width: 50
    height: 48

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    background: Rectangle {
        color: control.down ? "#a5d6a7" : "#424242"
        opacity: enabled ? 1 : 0.3
    }
}