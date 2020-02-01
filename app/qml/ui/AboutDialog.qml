/*
    Copyright 2020, Mitch Curtis

    This file is part of Slate.

    Slate is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Slate is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Slate. If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.14
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14

import App 1.0

import "." as Ui

Dialog {
    id: root
    objectName: "aboutDialog"
    title: qsTr("About Slate")
    modal: true
    dim: false
    focus: true
    standardButtons: Dialog.Ok
    width: Math.max(implicitWidth, 280)

    property Project project

    ColumnLayout {
        spacing: 12

        Label {
            text: qsTr("Slate %1").arg(Qt.application.version)
            font.bold: true
            font.pixelSize: Qt.application.font.pixelSize * 1.1
            Layout.fillWidth: true
        }

        Label {
            text: qsTr("Built from %1").arg(BuildInfo.version)
            font.pixelSize: Qt.application.font.pixelSize
            Layout.fillWidth: true
        }

        Label {
            text: qsTr("Copyright 2020, Mitch Curtis")
        }
    }
}
