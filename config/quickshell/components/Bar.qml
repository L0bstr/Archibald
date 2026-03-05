import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.UPower

PanelWindow {
   color: "transparent"
   anchors {
      top: true
      left: true
      right: true
   }
   margins {
      top: 5
      left: 5
      right: 5
   }
   height: 45

   Rectangle {
      color: "#0D0D0D"
      width: parent.width
      height: parent.height
      radius: 100
      
      Text {
         anchors.centerIn: parent
         color: "#D9D9D9"
         font.pixelSize: 20
         font.family: "JetBrainsMono NFM"
         text: UPower.displayDevice.percentage * 100 + "%"
      }
   }
}
