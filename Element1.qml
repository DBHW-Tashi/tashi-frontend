import QtQuick 2.6
import QtQuick.Controls 2.1

Rectangle {
    id: baseElement
    z: 5
    width: 120
    height: 140
    property int pixelStep: 10
    border.width: designMode ? 1 : 0
    border.color: "lightgrey"
    color: "transparent"

    scale: (!designMode && scaleOnHover && dragMouseArea.containsMouse) ? 1.2 : 1
    Behavior on scale { NumberAnimation { easing.type: Easing.OutCubic ; duration: 120} }

    // Identifiers
    property string dataObjectId
    property string instanceId
    property string dataObjectName
    property variant uiFormatProps
    property string staticUiInstanceData
    property bool readOnly: false
    property bool designMode: false
    property bool debugMode: false
    property bool scaleOnHover: false
    property string value

    MouseArea
    {
        id: dragMouseArea
        anchors.fill: parent

        hoverEnabled: true

        drag.target: (designMode) ? baseElement : null // Cancels drag when not in design mode
        drag.minimumX: 0
        drag.minimumY: 0
        drag.maximumX: baseElement.parent.width - titleBar.width - (border.width * 2)
        drag.maximumY: baseElement.parent.height - baseElement.height - (border.width * 2)

    }

    // Title bar - currently used to display Data Object Id and the close button
    Rectangle {
        id: titleBar
        anchors.top: parent.top
        anchors.left: parent.left
        width: parent.width
        Text {
            id: txtTitle
            anchors.top: parent.top
            anchors.left: parent.left
            width: parent.width
            text: dataObjectName + ((designMode) ? "\n(" + dataObjectId + ")" : "")
            wrapMode: Text.Wrap
            font.pointSize: 9
        }
    }

        MouseArea {
            anchors.fill: parent
            onClicked: {

            }
        }

}
