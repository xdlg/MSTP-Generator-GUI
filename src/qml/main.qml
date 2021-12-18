import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

import components 1.0 as Components

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("MSTP Generator")
  color: "black"

  GridLayout {
    rows: 4
    flow: GridLayout.TopToBottom
    rowSpacing: 10
    columnSpacing: 20

    Repeater {
      model: ["Enable", "Act.", "Inh.", "Inc."]
      Label {
        text: modelData
        color: "white"
      }
    }

    Switch {
      id: isEnabled
      Layout.alignment: Qt.AlignHCenter
    }
    Components.CustomSpinBox {
      id: activatorRadius
      Layout.alignment: Qt.AlignHCenter
    }
    Components.CustomSpinBox {
      id: inhibitorRadius
      Layout.alignment: Qt.AlignHCenter
    }
    Components.DoubleSpinBox {
      id: increment
      Layout.alignment: Qt.AlignHCenter
    }
  }
}
