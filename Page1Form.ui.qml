import QtQuick 2.12
import QtQuick.Controls 2.5
import QtCharts 2.12

Page {
    width: 320
    height: 480

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    ChartView {
        id: line
        x: 61
        y: 6
        width: 198
        height: 92
        LineSeries {
            name: "LineSeries"
            XYPoint {
                x: 0
                y: 2
            }

            XYPoint {
                x: 1
                y: 1.2
            }

            XYPoint {
                x: 2
                y: 3.3
            }

            XYPoint {
                x: 5
                y: 2.1
            }
        }
    }
}
