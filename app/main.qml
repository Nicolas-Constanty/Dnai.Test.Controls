import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2

import Dnai.Controls 1.0
import Dnai.FontAwesome 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "#606060"

    Item {
        id: name
        anchors.fill: parent
        anchors.margins: 20

        ListModel {
            id: nameModel
            ListElement { value: "Alice" }
            ListElement { value: "Bob" }
            ListElement { value: "Jane" }
            ListElement { value: "Harry" }
            ListElement { value: "Wendy" }
        }

        Column {
            anchors.fill: parent
            spacing: 10
            StringProperty {
                name: "Name"
                value: "Enum 1"
            }

            EnumerationProperty {
                model : nameModel
            }

            DropDownProperty {
                model: nameModel
            }

            IntProperty {
                name: "Count"
                value: "10"
            }

            DoubleProperty {
                name: "Percent"
                value: "2355.12"
            }

            BoolProperty {
                value: false
            }
        }
    }
}
