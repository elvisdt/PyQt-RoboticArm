import sys
import os
from PySide6.QtCore import QUrl, Qt
from PySide6.QtGui import QGuiApplication, QSurfaceFormat
from PySide6.QtQuick import QQuickView
from PySide6.Qt3DCore import Qt3DCore
from PySide6.Qt3DRender import Qt3DRender
from PySide6.Qt3DExtras import Qt3DExtras
from PySide6.QtQuick3D import QQuick3D

# Importar nuestro renderizador personalizado
from StlRenderer import StlRenderer

def main():
    # Configurar formato de OpenGL
    format = QSurfaceFormat()
    format.setVersion(3, 3)
    format.setProfile(QSurfaceFormat.CoreProfile)
    format.setDepthBufferSize(24)
    format.setStencilBufferSize(8)
    format.setSamples(4)  # MSAA
    QSurfaceFormat.setDefaultFormat(format)
    
    # Crear aplicación
    app = QGuiApplication(sys.argv)
    
    # Registrar tipos QML personalizados
    StlRenderer.register_qml_types()
    
    # Crear y configurar la vista QML
    view = QQuickView()
    view.setResizeMode(QQuickView.SizeRootObjectToView)
    
    # Cargar archivo QML
    qml_file = os.path.join(os.path.dirname(__file__), "main.qml")
    view.setSource(QUrl.fromLocalFile(qml_file))
    
    # Mostrar ventana
    view.show()
    
    # Ejecutar aplicación
    sys.exit(app.exec())

if __name__ == "__main__":
    main()