import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
    width: Screen.width
    height: Screen.height
    color: "#262626"

    Text {
        text: "Into nothing"
        color: "#D9D9D9"
        font.pixelSize: 52
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
    }

    Rectangle {
        width: 320
        height: 320
        radius: 15
        color: "#0D0D0D"

        anchors.centerIn: parent

        Column {
            anchors.centerIn: parent
            spacing: 10
            width: parent.width * 0.8

            Rectangle {
                width: 80
                height: 80
                radius: 40
                color: "#2a2a2a"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextField {
                id: username
                placeholderText: "username"
                text: userModel.lastUser
                width: parent.width
            }

            TextField {
                id: password
                placeholderText: "password"
                echoMode: TextInput.Password
                width: parent.width

                onAccepted: login()
            }

            Button {
                text: "Login"
                width: parent.width
                onClicked: login()
            }
        }
    }

    function login() {
        sddm.login(username.text, password.text, sessionModel.lastIndex)
    }
}

