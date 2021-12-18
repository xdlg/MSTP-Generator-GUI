import QtQuick
import QtQuick.Controls
import components 1.0 as Components

Components.CustomSpinBox {
  id: spinBox

  property real doubleValue: value / doubleFactor
  property real doubleFrom: 0.0
  property real doubleTo: 1.0
  property real doubleStepSize: 0.01
  readonly property int decimals: 2
  readonly property int doubleFactor: 100

  editable: true
  from: doubleFrom * doubleFactor
  to: doubleTo * doubleFactor
  stepSize: doubleStepSize * doubleFactor

  validator: DoubleValidator {
    bottom: Math.min(spinBox.from, spinBox.to)
    top:  Math.max(spinBox.from, spinBox.to)
  }

  textFromValue: function(value, locale) {
    return Number(value / doubleFactor).toLocaleString(locale, 'f', spinBox.decimals)
  }

  valueFromText: function(text, locale) {
    return Number.fromLocaleString(locale, text) * doubleFactor
  }
}
