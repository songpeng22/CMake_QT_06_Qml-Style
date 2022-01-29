import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ButtonStyle  {
	background: Rectangle {
		implicitWidth: 200
		implicitHeight: 50
		border.width: control.activeFocus ? 2 : 1
		border.color: "#888"
		radius: 20
		gradient: Gradient {
			GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
			GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
		}
	}
}