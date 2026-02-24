import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
   id: root

   color: config.BgColor
   anchors.fill: parent

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
      id: backgroundRect
      width: parent.width / 4
      color: config.DarkColor
      radius: 25
      anchors.centerIn: parent

      ColumnLayout {
         id: columnLayout
         anchors.fill: parent
         anchors.margins: 50
         spacing: 50

         Image {
            source: "assets/placeholder.png"
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
         }

         ColumnLayout {
            spacing: 10

            Text {
               text: "username"
               font {
                  family: "JetBrains Mono NFM"
                  pixelSize: 32
                  weight: Font.Bold
               }
               color: config.BgColor
               anchors.left: parent.left
            }

            TextBox {
               id: username
               KeyNavigation.tab: password

               color: config.BgColor
               height: 50
               font {
                  family: "JetBrains Mono NFM"
                  pixelSize: 20
               }
               borderColor: config.BgColor
               focusColor: config.BgColor
               hoverColor: config.BgColor
               textColor: config.FgColor
               Layout.fillWidth: true
               radius: 5
            }

            Text {
               text: "password"
               font {
                  family: "JetBrains Mono NFM"
                  pixelSize: 32
                  weight: Font.Bold
               }
               color: config.BgColor
               anchors.left: parent.left
            }

            PasswordBox {
               id: password
               KeyNavigation.tab: login_button

               color: config.BgColor
               height: 50
               font {
                  family: "JetBrains Mono NFM"
                  pixelSize: 20
               }
               borderColor: config.BgColor
               focusColor: config.BgColor
               hoverColor: config.BgColor
               textColor: config.FgColor
               Layout.fillWidth: true
               radius: 5
            }
         }
         Button {
            id: login_button

            text: "Login"
            Layout.preferredWidth: parent.width / 2
            Layout.alignment: Qt.AlignHCenter
            height: 50

            color: config.BgColor
            textColor: config.FgColor
            borderColor: config.BgColor
            pressedColor: config.DarkColor
            activeColor: config.BgColor

            font {
               family: "JetBrains Mono NFM"
               pixelSize: 32
            }

            onClicked: {
               sddm.login(username.text, password.text, 0);
            }
         }
      }
      implicitWidth: columnLayout.implicitWidth + 100
      implicitHeight: columnLayout.implicitHeight + 100
   }
}
