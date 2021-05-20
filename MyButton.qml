import QtQuick 2.6
import QtQuick.Controls 2.1

Element1 {

    id: buttonRect

    property string text: ""
    property alias enabled: btn.enabled
    property alias highlighted: btn.highlighted


    // set a holdText for buttons that have different functions when pressed as held
    property string holdText: ""
    // the property buttonHold will then be "true" when the clicked signal is fired.
    // it is reset only the next time the button is pressed down.
    property bool buttonHold

    signal clicked();
    // this is fired after a buttonHold when the user fired the "holdText" alternative action
    signal clickedHold();

    Button {
        id: btn
        anchors.fill: parent
        font.pointSize: 8
        flat: true
        text: ((buttonRect.holdText != "" && btn.pressed && buttonRect.buttonHold) ? buttonRect.holdText : buttonRect.text)
        background: Rectangle {
            id: backgr
            opacity: enabled ? 1 : 0.3
            color: btn.down ? "#f0f0f0" : (btn.highlighted ? "#bbc7d2" : "lightgrey")
            radius: 10
        }
        onClicked: {
            animateColor.start()
            buttonRect.clicked();
        }
        onPressed: {
            buttonRect.buttonHold = false
        }
        onPressAndHold: {
            if (holdText) {
                buttonRect.buttonHold = true
            }
        }
        onReleased: {
            if (buttonRect.buttonHold) {
                animateColor.start()
                buttonRect.clickedHold()
            }
        }

        contentItem: Label {
            text: btn.text
            font: btn.font
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
        }
        PropertyAnimation {id: animateColor; target: backgr; properties: "color"; from:"lightgrey"; to: "lightgrey"; duration: 100}
    }
}
