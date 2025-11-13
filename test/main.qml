import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick3D 1.15
import QtQuick3D.Helpers 1.15
import StlRenderer 1.0

Window {
    width: 1200
    height: 800
    visible: true
    title: "Visualizador STL 3D"

    Row {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        padding: 10
        spacing: 10

        Button {
            text: "Cargar STL"
            onClicked: fileDialog.open()
        }

        Text {
            text: "Archivo: " + (stlRenderer.filePath || "Ninguno seleccionado")
            verticalAlignment: Text.AlignVCenter
            height: parent.height
        }

        Button {
            text: "Vista Frontal"
            onClicked: {
                orbitCamera.x = 0
                orbitCamera.y = 0
                orbitCamera.z = 600
            }
        }

        Button {
            text: "Vista Superior"
            onClicked: {
                orbitCamera.x = 0
                orbitCamera.y = 600
                orbitCamera.z = 0
            }
        }

        Button {
            text: "Reset Vista"
            onClicked: {
                orbitCamera.x = 300
                orbitCamera.y = 300
                orbitCamera.z = 300
            }
        }
    }

    FileDialog {
        id: fileDialog
        title: "Seleccionar archivo STL"
        nameFilters: ["Archivos STL (*.stl)"]
        onAccepted: {
            stlRenderer.filePath = selectedFile
        }
    }

    View3D {
        anchors.fill: parent
        anchors.topMargin: 60
        camera: orbitCamera

        environment: SceneEnvironment {
            clearColor: "#2c3e50"
            backgroundMode: SceneEnvironment.Color
        }

        OrbitCameraController {
            id: orbitCamera
            z: 600
        }

        DirectionalLight {
            eulerRotation.x: -30
            eulerRotation.y: 30
            brightness: 1
        }

        DirectionalLight {
            eulerRotation.x: -30
            eulerRotation.y: -30
            brightness: 0.5
        }

        Model {
            id: stlModel
            position: Qt.vector3d(0, 0, 0)
            scale: Qt.vector3d(1, 1, 1)

            geometry: StlGeometry {
                id: stlGeometry
                filePath: stlRenderer.filePath
            }

            materials: [
                PrincipledMaterial {
                    baseColor: "#3498db"
                    metalness: 0.1
                    roughness: 0.3
                    specularAmount: 0.5
                }
            ]
        }

        // Ejes de coordenadas
        Model {
            source: "#Cylinder"
            position: Qt.vector3d(100, 0, 0)
            scale: Qt.vector3d(0.1, 100, 0.1)
            materials: [ PrincipledMaterial { baseColor: "red" } ]
        }

        Model {
            source: "#Cylinder"
            position: Qt.vector3d(0, 100, 0)
            scale: Qt.vector3d(0.1, 100, 0.1)
            eulerRotation.z: 90
            materials: [ PrincipledMaterial { baseColor: "green" } ]
        }

        Model {
            source: "#Cylinder"
            position: Qt.vector3d(0, 0, 100)
            scale: Qt.vector3d(0.1, 100, 0.1)
            eulerRotation.x: 90
            materials: [ PrincipledMaterial { baseColor: "blue" } ]
        }
    }

    StlRenderer {
        id: stlRenderer
    }
}