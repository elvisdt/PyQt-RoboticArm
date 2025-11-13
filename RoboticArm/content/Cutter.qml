import QtQuick
import QtQuick.Window
import QtQuick3D

Window {
    visible: true
    width: 800
    height: 600

    View3D {
        anchors.fill: parent

        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
            clearColor: "#1c1c1c"
        }

        DirectionalLight {
            eulerRotation.x: -45
            eulerRotation.y: 45
        }

        PerspectiveCamera {
            position: Qt.vector3d(0, 150, 300)
            eulerRotation.x: -25
        }

        Model { source: "content/gbls/base.glb" }
        Model { source: "content/gbls/brazo_1.glb"; position: Qt.vector3d(0, 90, 0) }
        Model { source: "content/gbls/brazo_2.glb"; position: Qt.vector3d(0, 180, 0) }
    }
}
