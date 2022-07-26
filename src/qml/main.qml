import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

// import PatternGeneratorPresenter 1.0
// import components 1.0 as Components

ApplicationWindow {
  width: 320
  height: 240
  // width: rows.width
  // height: rows.height
  visible: true
  title: qsTr("MSTP Generator")

  Connections {
    target: imageProvider
    function onImageReady() {
      image.refresh();
    }
  }

  Image {
    id: image
    anchors.fill: parent
    source: "image://imageProvider/image"
    // Necessary to reload the image after changing the source
    cache: false

    function refresh() {
      var oldSource = source
      source = ""
      source = oldSource
    }
  }

  MouseArea {
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor
    hoverEnabled: false
    acceptedButtons: Qt.LeftButton | Qt.RightButton
    onClicked: (mouse) => {
      if (mouse.button == Qt.LeftButton)
        imageProvider.startStopGeneration()
      else
        imageProvider.resetImage()
    }
  }

  // PatternGeneratorPresenter {
  //   id: patternGeneratorPresenter
  // }
  //
  // RowLayout {
  //   id: rows
  //
  //   ColumnLayout {
  //     RowLayout {
  //       ComboBox {
  //         id: resolution
  //       }
  //       Button {
  //         id: playButton
  //         text: "Play"
  //         onClicked: patternGeneratorPresenter.generate()
  //       }
  //       Button {
  //         id: resetButton
  //         text: "Reset"
  //       }
  //     }
  //
  //     GridLayout {
  //       id: scaleControllers
  //       columns: 2
  //       rowSpacing: 10
  //       columnSpacing: 20
  //
  //       Repeater {
  //         model: 6
  //         Components.ScaleController {}
  //       }
  //     }
  //   }
  //
  //   Rectangle {
  //     id: pattern
  //     Layout.alignment: Qt.AlignHCenter
  //     width: 640
  //     height: 480
  //     color: "blue"
  //   }
  // }
}
