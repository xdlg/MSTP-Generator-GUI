import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import components 1.0 as Components

GridLayout {
  property alias isEnabled: isEnabled.checked
  property alias activatorRadius: activatorRadius.value
  property alias inhibitorRadius: inhibitorRadius.value
  property alias increment: increment.doubleValue

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
