import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import components 1.0 as Components

ApplicationWindow {
  width: rows.width
  height: rows.height
  visible: true
  title: qsTr("MSTP Generator")
  color: "black"


  RowLayout {
    id: rows

    ColumnLayout {
      RowLayout {
        ComboBox {
          id: resolution
        }
        Button {
          id: playButton
          text: "Play"
        }
        Button {
          id: resetButton
          text: "Reset"
        }
      }

      GridLayout {
        id: scaleControllers
        columns: 2
        rowSpacing: 10
        columnSpacing: 20

        Repeater {
          model: 6
          Components.ScaleController {}
        }
      }
    }

    Rectangle {
      id: image
      Layout.alignment: Qt.AlignHCenter
      width: 640
      height: 480
      color: "blue"
    }

  }

}
