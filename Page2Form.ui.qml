import QtQuick 2.12
import QtQuick.Controls 2.5
import com.hadesk.Player 1.0

Page {
    id: page
    width: 320
    height: 480

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 2.")
        anchors.centerIn: parent
    }

    Player {
        id: player
    }

    Button {
        id: button
        width: 99
        height: 40
        text: qsTr("Button")
        anchors.top: parent.top
        anchors.topMargin: 6
        anchors.left: parent.left
        anchors.leftMargin: 12
        onClicked: {
            console.log("Play")
            player.play()
        }
    }
}

/*##^##
Designer {
    D{i:3;anchors_x:37;anchors_y:0}
}
##^##*/
