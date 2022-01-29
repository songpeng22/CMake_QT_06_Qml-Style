import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.2
//import QtQuick.Controls.Material 2.2

Window {
    id:idWindow1
    objectName: "objWindow1"
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")

    Rectangle{
        id:idRect1
        objectName : "objRect1"
//        color: "white"
        height: idColumn2.height
        anchors.left : parent.left
        anchors.right : parent.right

        Button {
			id: navigationFeatureButton
			text: qsTr("Navigation")
		}

        Column {
            id:idColumn2
            anchors.centerIn: parent

            RadioButton { text: qsTr("Small") }
            RadioButton { text: qsTr("Medium");  checked: true }
            RadioButton { text: qsTr("Large") }

			Switch { text: qsTr("First"); checked: true }
			Switch { text: qsTr("Second"); checked: true }
			Switch { text: qsTr("Third") }
        }
    }
    Rectangle{
        id:idRect2
        objectName : "objRect2"
        color: "plum"
        height:parent.height * 2 / 3
        anchors.left : parent.left
        anchors.right : parent.right
        anchors.top:idRect1.bottom

        Image {
            id: idImageRoot
            source: "images/background.png"
            Image {
                id: pole
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                source: "images/pole.png"
            }

            Image {
                id: wheel
                anchors.centerIn: parent
                source: "images/pinwheel.png"
                Behavior on rotation {
                    NumberAnimation {
                        duration: 250
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: wheel.rotation += 90
            }
        }
    }
}
