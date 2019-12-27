#!/usr/bin/python3
import sys
import os

from PyQt5.QtWidgets import QApplication
from PyQt5.QtQml import qmlRegisterType, QQmlApplicationEngine
from player import Player


if __name__ == "__main__":
    os.environ['QT_IM_MODULE'] = 'qtvirtualkeyboard'
    os.environ['QT_QUICK_CONTROLS_STYLE'] = 'Material'
    os.environ['QT_QUICK_CONTROLS_MATERIAL_THEME'] = 'Dark'
    os.environ['QT_QUICK_CONTROLS_MATERIAL_ACCENT'] = 'Green'
    os.environ['QML_IMPORT_PATH'] = os.path.dirname(os.path.abspath(__file__))

    # Create the application instance.
    app = QApplication(sys.argv)

    # Create a QML engine.
    engine = QQmlApplicationEngine()

    # Register the Python type.  Its URI is 'People', it's v1.0 and the type
    # will be called 'Person' in QML.
    qmlRegisterType(Player, 'com.hadesk.Player', 1, 0, 'Player')

    # Create a component factory and load the QML script.
    engine.load('main.qml')
    engine.quit.connect(app.quit)

    app.exec()
