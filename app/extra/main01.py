#!/usr/bin/python3
import sys
from PySide6.QtGui import QGuiApplication, QIcon
from PySide6.QtQml import QQmlApplicationEngine


class Aplicacion:
    def __init__(self):
        self.app = QGuiApplication(sys.argv)
        self.app.setWindowIcon(QIcon("icon.png"))

        self.engine = QQmlApplicationEngine()
        self.engine.quit.connect(self.app.quit)

        # Carga el archivo QML principal
        self.engine.load("content/App.qml")

        if not self.engine.rootObjects():
            print("Error cargando el QML")
            sys.exit(-1)

        sys.exit(self.app.exec())


if __name__ == "__main__":
    Aplicacion()
