import QtQuick 2.12
import QtQuick.Controls 2.3

Button {
    anchors.bottom: parent.bottom
    property alias image_source: image.source
    width: 53
    height: 48

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    background: Rectangle {
        color: "#303030"
    }
}