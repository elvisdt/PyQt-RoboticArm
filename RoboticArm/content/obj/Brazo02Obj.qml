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
        id: brazo02Obj_obj
        objectName: "Brazo02Obj.obj"
        Model {
            id: brazo
            objectName: "BRAZO"
            source: "meshes/brazo_02.mesh"
            materials: [
                color_adb5bd_material
            ]
        }
    }

    // Animations:
}
