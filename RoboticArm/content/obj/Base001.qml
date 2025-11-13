import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: steel___Satin_material
        objectName: "Steel_-_Satin"
        baseColor: "#ffa0a0a0"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: base001_obj
        objectName: "base001.obj"
        Model {
            id: base001
            objectName: "base001"
            source: "meshes/base001_mesh.mesh"
            materials: [
                steel___Satin_material
            ]
        }
    }

    // Animations:
}
