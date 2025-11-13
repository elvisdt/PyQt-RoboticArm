import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: steel___Satin_material
        objectName: "Steel_-_Satin"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: brazo_001_obj
        objectName: "brazo_001.obj"
        Model {
            id: body496870
            objectName: "body496870"
            source: "meshes/body496870_mesh.mesh"
            materials: [
                steel___Satin_material
            ]
        }
    }

    // Animations:
}
