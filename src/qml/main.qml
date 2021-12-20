import QtQuick
import QtQuick.Window
import QtQuick.Layouts

import components 1.0 as Components

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("MSTP Generator")
  color: "black"

  GridLayout {
    columns: 2
    rowSpacing: 10
    columnSpacing: 20

    Repeater {
      model: 6
      Components.ScaleController {}
    }
  }
}
