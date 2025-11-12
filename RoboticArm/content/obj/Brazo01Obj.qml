import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: color_adb5bd_material
        objectName: "color_adb5bd"
        baseColor: "#ffadb5bd"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: brazo01Obj_obj
        objectName: "Brazo01Obj.obj"
        Model {
            id: brazo
            objectName: "BRAZO"
            source: "meshes/brazo_01.mesh"
            materials: [
                color_adb5bd_material
            ]
        }
    }

    // Animations:
}
