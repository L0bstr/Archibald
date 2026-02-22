import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
   color: config.BgColor

   Text {
      text: "Into nothing"
      font {
         family: "JetBrains Mono NFM"
         pixelSize: 52
      }
      color: config.FgColor
      anchors {
         horizontalCenter: parent.horizontalCenter
         top: parent.top
         topMargin: 25
      }
   }

   Rectangle {
      color: config.DarkColor
      width: 480
      height: 484
      radius: 25
      anchors.centerIn: parent

      Column {
         Image {
            source: "assets/placeholder.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
         }
      }
   }
}
