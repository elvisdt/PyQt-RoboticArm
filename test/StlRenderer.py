from PySide6.QtCore import QObject, Property, Signal, QUrl
from PySide6.Qt3DCore import Qt3DCore
from PySide6.Qt3DRender import Qt3DRender
from PySide6.Qt3DExtras import Qt3DExtras
from PySide6.QtGui import QVector3D
import numpy as np
import struct

class StlRenderer(QObject):
    meshChanged = Signal()
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self._mesh = None
        self._file_path = ""
    
    @Property(str, notify=meshChanged)
    def filePath(self):
        return self._file_path
    
    @filePath.setter
    def filePath(self, path):
        if self._file_path != path:
            self._file_path = path
            self.load_stl_file(path)
            self.meshChanged.emit()
    
    def load_stl_file(self, file_path):
        """Carga un archivo STL y crea la malla 3D"""
        try:
            if not file_path:
                return
            
            # Leer archivo STL
            vertices, normals = self.parse_stl(file_path)
            
            if len(vertices) == 0:
                print("No se pudieron cargar vértices del archivo STL")
                return
            
            # Crear geometría
            self.create_geometry(vertices, normals)
            
        except Exception as e:
            print(f"Error cargando STL: {e}")
    
    def parse_stl(self, file_path):
        """Parsea archivo STL binario"""
        try:
            with open(file_path, 'rb') as file:
                # Saltar header (80 bytes)
                file.read(80)
                
                # Leer número de triángulos (4 bytes)
                num_triangles = struct.unpack('<I', file.read(4))[0]
                
                vertices = []
                normals = []
                
                for _ in range(num_triangles):
                    # Leer normal (3 floats, 12 bytes)
                    normal = struct.unpack('<fff', file.read(12))
                    
                    # Leer 3 vértices (9 floats, 36 bytes)
                    v1 = struct.unpack('<fff', file.read(12))
                    v2 = struct.unpack('<fff', file.read(12))
                    v3 = struct.unpack('<fff', file.read(12))
                    
                    # Añadir vértices y normales
                    vertices.extend([v1, v2, v3])
                    normals.extend([normal, normal, normal])
                    
                    # Saltar atributos (2 bytes)
                    file.read(2)
                
                return vertices, normals
                
        except Exception as e:
            print(f"Error parseando STL: {e}")
            return [], []
    
    def create_geometry(self, vertices, normals):
        """Crea la geometría 3D a partir de los vértices y normales"""
        # Convertir a arrays de numpy para procesamiento
        vertices_array = np.array(vertices, dtype=np.float32)
        normals_array = np.array(normals, dtype=np.float32)
        
        # Crear malla (en una implementación real, aquí crearías la entidad 3D)
        self._mesh = {
            'vertices': vertices_array,
            'normals': normals_array,
            'num_triangles': len(vertices) // 3
        }
        
        print(f"Malla cargada: {len(vertices)} vértices, {len(vertices)//3} triángulos")
    
    @classmethod
    def register_qml_types(cls):
        """Registra la clase para usar en QML"""
        from PySide6.QtQml import qmlRegisterType
        qmlRegisterType(cls, 'StlRenderer', 1, 0, 'StlRenderer')