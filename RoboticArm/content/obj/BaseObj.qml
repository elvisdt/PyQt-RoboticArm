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
        id: baseObj_obj
        objectName: "baseObj.obj"
        Model {
            id: base_01_step
            objectName: "base_01.step"
            source: "meshes/base_01.mesh"
            materials: [
                color_adb5bd_material
            ]
        }
    }

    // Animations:
}
