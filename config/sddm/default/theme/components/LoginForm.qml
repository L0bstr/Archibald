import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    signal loginClicked(string password)

    TextField {
        id: password
        echoMode: TextInput.Password
    }

    Button {
        text: "Login"
        onClicked: loginClicked(password.text)
    }
}
