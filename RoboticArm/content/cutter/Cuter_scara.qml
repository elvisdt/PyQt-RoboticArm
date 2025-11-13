import QtQuick
import QtQuick3D

Node {
    id: node

    property int rotation1
    property int rotation2
    property int rotation3
    property int rotation4
    property int rotation5
    property int rotation6
    property int clawsAngle

    
    // Resources
    PrincipledMaterial {
        id: node255_0_0_material
        objectName: "255,0,0"
        baseColor: "#ffff0000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: node68_68_68_material
        objectName: "68,68,68"
        baseColor: "#ff444444"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: steel___Satin_material
        objectName: "Steel_-_Satin"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: node255_255_255_material
        objectName: "255,255,255"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: node0_255_0_material
        objectName: "0,255,0"
        baseColor: "#ff00ff00"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: node229_234_237_material
        objectName: "229,234,237"
        baseColor: "#ffe5eaed"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: cuter_scara_obj
        objectName: "cuter_scara.obj"
        Model {
            id: base_s1
            objectName: "base_s1"
            source: "meshes/base_s1_mesh.mesh"
            materials: [
                node255_0_0_material
            ]
        }
        Model {
            id: base_p1
            objectName: "base_p1"
            source: "meshes/base_p1_mesh.mesh"
            materials: [
                node68_68_68_material,
                node255_0_0_material,
                node68_68_68_material
            ]
        }
        Model {
            id: base_b1
            objectName: "base_b1"
            source: "meshes/base_b1_mesh.mesh"
            materials: [
                steel___Satin_material
            ]
        }
        Model {
            id: base_b2
            objectName: "base_b2"
            source: "meshes/base_b2_mesh.mesh"
            materials: [
                node255_0_0_material,
                node255_255_255_material
            ]
        }
        Model {
            id: base_b21
            objectName: "base_b21"
            source: "meshes/base_b21_mesh.mesh"
            materials: [
                steel___Satin_material
            ]
        }
        Model {
            id: base_b11
            objectName: "base_b11"
            source: "meshes/base_b11_mesh.mesh"
            materials: [
                node0_255_0_material,
                node255_255_255_material
            ]
        }
        Model {
            id: brazo_01
            objectName: "brazo_01"
            source: "meshes/brazo_01_mesh.mesh"
            materials: [
                node68_68_68_material,
                node229_234_237_material,
                node68_68_68_material,
                node229_234_237_material
            ]
        }
        Model {
            id: brazo_02
            objectName: "brazo_02"
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

    // Animations:
}
