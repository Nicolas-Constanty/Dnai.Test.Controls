import QtQuick 2.0
import QtQuick.Controls 2.2

import Dnai.Controls 1.0

PanelView {
    id: _panel
    property alias value: _value.text
    property alias valueRef: _value
    property alias label: _label
    property string name: "Int property"
    property real contentHeight: 24

    anchors.left: parent.left
    anchors.right: parent.right
    height: _panel.contentHeight + header.height + _panel.content.anchors.topMargin * 2

    header.title.text: name
    Item {
        id: _property
        height: _panel.contentHeight
        anchors.left: parent.left
        anchors.right: parent.right
        Label {
            id: _label
            height: _panel.contentHeight
            text: qsTr("Value : ")
            anchors.left: parent.left
            verticalAlignment: Text.AlignVCenter
            color: "#ffffff"
        }
        EditableText {
            id: _value
            text: "MyName"
            height: _panel.contentHeight
            anchors.left: _label.right
            anchors.leftMargin: 3
            anchors.right: parent.right
            anchors.rightMargin: 5
            horizontalAlignment: TextInput.AlignRight
            validator: IntValidator{bottom: -2147483647; top: 2147483647;}
        }
    }
}
