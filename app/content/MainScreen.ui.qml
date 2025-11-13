// Copyright (C) 2022 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick
import QtQuick3D
import QtQuick.Controls.Material
import QtQuick.Controls
import QtQuick.Layouts
import QtQml

Pane {
    id: root
    Material.theme: darkModeToggle.checked ? Material.Dark : Material.Light

    readonly property bool mobile: Qt.platform.os === "android"
    readonly property bool horizontal: width > height
    property real sliderWidth: width * 0.15
    property real buttonRowWidth: width * 0.12
    property real buttonMinWidth: 65
    
	property real angrotacion1: 0
	property real angmovimiento1: 0 
	property real angrotacion2: 0
	


    leftPadding: 60
    rightPadding: 60
    topPadding: 50
    bottomPadding: 50

    width: 900
    height: 600
    state: "mobileHorizontal"
    

    Toggle {
        id: darkModeToggle
        checked: true
        text: qsTr("Dark mode")
        anchors.top: parent.top
    }
    
	Grid {
		id: angleRow
		x: 0
		width: 160
		height: 42
		anchors.top: darkModeToggle.bottom
		anchors.topMargin: 30
		verticalItemAlignment: Grid.AlignVCenter
		horizontalItemAlignment: Grid.AlignHCenter
		spacing: 8
		rows: 6
		columns: 8
		
		Label {
			id: pos
			text: "Move "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j1
			text: "Joint1 "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j2
			text: "Joint2 "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j3
			text: "Joint3 "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j4
			text: "Joint4 "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j5
			text: "Joint5 "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j6
			text: "Joint6 "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: cl
			text: "Claw "
			font.pointSize : 12
			font.bold : true
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: position
			text: "Move "
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j1Angle
			text: "J1"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j2Angle
			text: "J2"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j3Angle
			text: "J3"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j4Angle
			text: "J4"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j5Angle
			text: "J5"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j6Angle
			text: "J6"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		Label {
			id: clAngle
			text: "Claw"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: position0
			text: "Move "
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j1Angle0
			text: "J1"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j2Angle0
			text: "J2"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j3Angle0
			text: "J3"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j4Angle0
			text: "J4"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j5Angle0
			text: "J5"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j6Angle0
			text: "J6"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		Label {
			id: clAngle0
			text: "Claw"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: position1
			text: "Move "
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j1Angle1
			text: "J1"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j2Angle1
			text: "J2"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j3Angle1
			text: "J3"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j4Angle1
			text: "J4"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j5Angle1
			text: "J5"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j6Angle1
			text: "J6"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		Label {
			id: clAngle1
			text: "Claw"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: position2
			text: "Move "
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j1Angle2
			text: "J1"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j2Angle2
			text: "J2"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j3Angle2
			text: "J3"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j4Angle2
			text: "J4"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j5Angle2
			text: "J5"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j6Angle2
			text: "J6"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		Label {
			id: clAngle2
			text: "Claw"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: position3
			text: "Move "
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		Label {
			id: j1Angle3
			text: "J1"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j2Angle3
			text: "J2"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j3Angle3
			text: "J3"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
		
		Label {
			id: j4Angle3
			text: "J4"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j5Angle3
			text: "J5"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		
		Label {
			id: j6Angle3
			text: "J6"
			font.pointSize : 12
			horizontalAlignment: Text.AlignLeft
		}
		Label {
			id: clAngle3
			text: "Claw"
			font.pointSize : 12
			horizontalAlignment: Text.AlignHCenter
		}
	}
	
    ColumnLayout {
        id: slidersColumn
        spacing: 20
        anchors.bottom: parent.bottom
        
		
        LabeledSlider {
            id: rotation2Slider
            Layout.preferredWidth: root.sliderWidth
            Layout.minimumWidth: 160
            labelText: "J2"
            from: -90
            to: 90
            value: 45
            onValueChanged:{
				backend.setSlider2("SL2", value);
			}
        }

		LabeledSlider {
			id: movement1Slider
			Layout.preferredWidth: root.sliderWidth
			Layout.minimumWidth: 160
			labelText: "Up/Down"
			from: -40
			to: 0
			value: 0
			onValueChanged: {
				backend.setMovement1("MV1", value);
			}
		}

        LabeledSlider {
            id: rotation1Slider
            Layout.preferredWidth: root.sliderWidth
            Layout.minimumWidth: 160
            labelText: "J1"
            from: -180
            to: 180
            value: 110
            onValueChanged:{
				backend.setSlider1("SL1", value);
			}
        }
    }

    Toggle {
        id: localToggle
        text: qsTr("Local / Remote")
        anchors.bottom: slidersColumn.top
        anchors.bottomMargin: 30
        
        onCheckedChanged:{
			if (checked){
				backend.setlocalRemote('REMOTE',1);
			}else {
				backend.setlocalRemote('LOCAL',0);
			}
		}
        
    }

    GridLayout {
        id: buttonsRow
        columns: 2
        rows: 2
        columnSpacing: 16
        rowSpacing: 8
        anchors.bottom: localToggle.top
        anchors.bottomMargin: 30

        Button {
            id: pose1
            text: qsTr("Pose 1")
            Layout.preferredWidth: root.buttonRowWidth / 2
            Layout.minimumWidth: 90
            Layout.preferredHeight: 45
			onClicked: {
				backend.setPose1('P01','1')
			}
        }

        Button {
            id: pose2
            text: qsTr("Pose 2")
            Layout.preferredWidth: root.buttonRowWidth / 2
            Layout.minimumWidth: 90
            Layout.preferredHeight: 45
			onClicked: {
				backend.setPose2('PO2','1')
			}
        }

        Button {
            id: pose3
            text: qsTr("Pose 3")
            Layout.preferredWidth: root.buttonRowWidth / 2
            Layout.minimumWidth: 90
            Layout.preferredHeight: 45
			onClicked: {
				backend.setPose3('PO3','1')
			}
        }

        Button {
            id: resetPose
            text: qsTr("Reset")
            Layout.preferredWidth: root.buttonRowWidth / 2
            Layout.minimumWidth: 90
            Layout.preferredHeight: 45
			onClicked: {
				backend.setReset('RST','1')
			}
        }
    }
    


    View3D {
        anchors.fill: parent

        camera: camera
        Node {
            id: scene

            PointLight {
                x: 760
                z: 770
                quadraticFade: 0
                brightness: 1
            }

            DirectionalLight {
                eulerRotation.z: 30
                eulerRotation.y: -165
            }

            DirectionalLight {
                y: 1000
                brightness: 0.4
                eulerRotation.z: -180
                eulerRotation.y: 90
                eulerRotation.x: -90
            }

            PerspectiveCamera {
                id: camera
                x: 900
                y: 400
                z: -40
                pivot.x: 200
                eulerRotation.y: 85
            }
            
            RobotModel {
				Behavior on rotation1 {
					SmoothedAnimation {
						velocity: 60
					}
				}
				
				Behavior on movement1 {
					SmoothedAnimation {
						velocity: 60
					}
				}

				Behavior on rotation2 {
					SmoothedAnimation {
						velocity: 80
					}
				}

           
				
                id: roboArm 
				rotation1: angrotacion1
				movement1: angmovimiento1
				rotation2: angrotacion2
            }
        }
        

        NodeIndicator {
            scenePosition: roboArm.brazo2_position
            isFocused: rotation2Slider.activeFocus
            label: rotation2Slider.labelText
            size: 25
        }

        NodeIndicator {
            scenePosition: roboArm.brazo1_position
            isFocused: rotation1Slider.activeFocus
            label: rotation1Slider.labelText
            size: 25
        }

		NodeIndicator {
            scenePosition: roboArm.base_position
            isFocused: movement1Slider.activeFocus
            label: movement1Slider.labelText
            size: 25
        }


        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingQuality: SceneEnvironment.VeryHigh
            antialiasingMode: SceneEnvironment.MSAA
        }
    }

    Label {
        id: robotStatus
        text: "Qt for Python RobotArm Control" //backend.status
        anchors.top: parent.top
        font.italic: true
        font.pointSize : 16
        font.bold : true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10
    }

    Item {
        id: __materialLibrary__
    }

    states: [
        State {
            name: "mobileHorizontal"
            when: root.mobile && root.horizontal

            PropertyChanges {
                target: root
                leftPadding: 45
                topPadding: 15
                bottomPadding: 0
                sliderWidth: width * 0.4
                buttonRowWidth: width * 0.2
                buttonMinWidth: 75
            }

            PropertyChanges {
                target: roboArm
                z: -200
            }
        },
        State {
            name: "desktopVertical"
            when: !root.mobile && !root.horizontal

            PropertyChanges {
                target: root
                sliderWidth: width * 0.4
                buttonRowWidth: width * 0.2
                bottomPadding: 20
            }
            AnchorChanges {
                target: slidersColumn
                anchors.right: parent.right
            }
            PropertyChanges {
                target: slidersColumn
                anchors.rightMargin: 20
            }

            AnchorChanges {
                target: buttonsRow
                anchors.bottom: undefined
                anchors.top: slidersColumn.top
            }

            AnchorChanges {
                target: localToggle
                anchors.bottom: undefined
                anchors.top: buttonsRow.bottom
            }

            PropertyChanges {
                target: roboArm
                scale.x: 0.7
                scale.y: 0.7
                scale.z: 0.7
                y: 250
                z: 150
            }
        },
        State {
            name: "mobileVertical"
            when: root.mobile && !root.horizontal

            PropertyChanges {
                target: root
                sliderWidth: width * 0.85
                topPadding: 15
                leftPadding: 45
                bottomPadding: 0
                buttonRowWidth: width * 0.2
                buttonMinWidth: 75
            }

            AnchorChanges {
                target: slidersColumn
                anchors.left: undefined
                anchors.horizontalCenter: parent.horizontalCenter
            }

            AnchorChanges {
                target: localToggle
                anchors.left: undefined
                anchors.right: slidersColumn.right
            }

            AnchorChanges {
                target: buttonsRow
                anchors.bottom: slidersColumn.top
                anchors.left: slidersColumn.left
            }

            PropertyChanges {
                target: roboArm
                scale.x: 0.7
                scale.y: 0.7
                scale.z: 0.7
                y: 280
                z: 100
            }
        }
    ]

    transitions: Transition {
        PropertyAnimation {
            properties: "sliderWidth, scale.x, scale.y, scale.z, y, z"
        }
        AnchorAnimation {}
    }
    
    Timer{
		id:tmains
		interval: 250
		repeat: true
		running: true
		onTriggered: {
			angrotacion1 = backend.get_angulo1()
			angmovimiento1 = backend.get_movement1()
			angrotacion2 = backend.get_angulo2()
			
			
			rotation1Slider.value = angrotacion1
			rotation2Slider.value = angrotacion2
			movement1Slider.value = angmovimiento1
			
		}
	}
    Connections{
        target: backend
        
        function onDataposition0(pos, j1, j2, j3, j4, j5, j6, CL ){
			position.text = pos
			j1Angle.text =  j1
			j2Angle.text =  j2
			j3Angle.text =  j3
			j4Angle.text =  j4
			j5Angle.text =  j5
			j6Angle.text =  j6
			clAngle.text =  CL
        }
         function onDataposition1(pos,j1, j2, j3, j4, j5, j6, CL ){
			position0.text = pos
			j1Angle0.text =  j1
			j2Angle0.text =  j2
			j3Angle0.text =  j3
			j4Angle0.text =  j4
			j5Angle0.text =  j5
			j6Angle0.text =  j6
			clAngle0.text =  CL
        }
         function onDataposition2(pos,j1, j2, j3, j4, j5, j6, CL ){
			position1.text = pos
			j1Angle1.text =  j1
			j2Angle1.text =  j2
			j3Angle1.text =  j3
			j4Angle1.text =  j4
			j5Angle1.text =  j5
			j6Angle1.text =  j6
			clAngle1.text =  CL
        }
        function onDataposition3(pos,j1, j2, j3, j4, j5, j6, CL ){
			position2.text = pos
			j1Angle2.text =  j1
			j2Angle2.text =  j2
			j3Angle2.text =  j3
			j4Angle2.text =  j4
			j5Angle2.text =  j5
			j6Angle2.text =  j6
			clAngle2.text =  CL
        }
        function onDataposition4(pos,j1, j2, j3, j4, j5, j6, CL ){
			position3.text = pos
			j1Angle3.text =  j1
			j2Angle3.text =  j2
			j3Angle3.text =  j3
			j4Angle3.text =  j4
			j5Angle3.text =  j5
			j6Angle3.text =  j6
			clAngle3.text =  CL
        }
	}
}
