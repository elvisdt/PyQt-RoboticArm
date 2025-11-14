import QtQuick
import QtQuick3D

Node {
    id: robot

    // ===== PROPIEDADES (3 DOF) =====
    property real rotation1: 0    // Base
    property real movement1: 0    // Elevación lineal
    property real rotation2: 0    // Segundo brazo

    // ===== ALIAS PARA MARCADORES =====
    readonly property alias base_position: base_group.scenePosition
    readonly property alias brazo1_position: brazo_01.scenePosition
    readonly property alias brazo2_position: brazo_02.scenePosition

    // ===== NODO PRINCIPAL =====
    Node {
        id: base_group
        //scale: Qt.vector3d(5, 5, 5)
        eulerRotation.y : 180
        // ---------- BASE MESHES ----------
        Model {
            id: base_p1
            source: "meshes/base_p1_mesh.mesh"
            materials: [
                node68_68_68_material,
                node255_0_0_material,
                node68_68_68_material
            ]
        }

        Model { id: base_b1;  source: "meshes/base_b1_mesh.mesh";  materials: [_steel_Satin_material] }
        Model { id: base_b2;  source: "meshes/base_b2_mesh.mesh";  materials: [node255_0_0_material, node255_255_255_material] }
        Model { id: base_b20; source: "meshes/base_b20_mesh.mesh"; materials: [_steel_Satin_material] }
        Model { id: base_b10; source: "meshes/base_b10_mesh.mesh"; materials: [node0_255_0_material, node255_255_255_material] }

        // ===== BASE SUPERIOR QUE GIRA =====
        Model {
            id: base_s1
            source: "meshes/base_s1_mesh.mesh"
            materials: [node255_0_0_material]

            // ★ ROTACIÓN 1 (BASE)
            eulerRotation.y: robot.rotation1

            // ========== BRAZO 1 ==========
            Node {
                id: brazo_01

                // ★ MOVIMIENTO LINEAL
                position.y: robot.movement1

                Model {
                    source: "meshes/brazo_01_mesh.mesh"
                    materials: [
                        node68_68_68_material,
                        node229_234_237_material,
                        node68_68_68_material,
                        node229_234_237_material
                    ]
                }

                // ========== BRAZO 2 ==========
                Node {
                    id: brazo_02
                    eulerRotation.y: robot.rotation2   // ★ ROTACIÓN 2

                    Model {
                        source: "meshes/brazo_02_mesh.mesh"
                        materials: [
                            node68_68_68_material,
                            node255_255_255_material,
                            node68_68_68_material,
                            node255_255_255_material,
                            node68_68_68_material,
                            node255_255_255_material,
                            node68_68_68_material
                        ]
                    }
                }
            }
        }
    }

    // ===== MATERIAL LIBRARY =====
    Node {
        id: __materialLibrary__

        PrincipledMaterial { id: node255_0_0_material; baseColor: "#ff0000" }
        PrincipledMaterial { id: node68_68_68_material; baseColor: "#444444" }
        PrincipledMaterial { id: node255_255_255_material; baseColor: "#ffffff" }
        PrincipledMaterial { id: node0_255_0_material;   baseColor: "#00ff00" }
        PrincipledMaterial { id: node229_234_237_material; baseColor: "#e5eaed" }
        PrincipledMaterial { id: _steel_Satin_material }
    }
}
