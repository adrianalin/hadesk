import sys

from PyQt5.QtGui import QGuiApplication
from PyQt5.QtCore import pyqtProperty, QObject
from PyQt5.QtQml import qmlRegisterType, QQmlApplicationEngine


# This is the type that will be registered with QML.  It must be a
# sub-class of QObject.
class Person(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)

        # Initialise the value of the properties.
        self._name = ''
        self._shoeSize = 0

    # Define the getter of the 'name' property.  The C++ type of the
    # property is QString which Python will convert to and from a string.
    @pyqtProperty('QString')
    def name(self):
        return self._name

    # Define the setter of the 'name' property.
    @name.setter
    def name(self, name):
        self._name = name

    # Define the getter of the 'shoeSize' property.  The C++ type and
    # Python type of the property is int.
    @pyqtProperty(int)
    def shoeSize(self):
        return self._shoeSize

    # Define the setter of the 'shoeSize' property.
    @shoeSize.setter
    def shoeSize(self, shoeSize):
        self._shoeSize = shoeSize


if __name__ == "__main__":
    # Create the application instance.
    app = QGuiApplication(sys.argv)

    # Register the Python type.  Its URI is 'People', it's v1.0 and the type
    # will be called 'Person' in QML.
    qmlRegisterType(Person, 'People', 1, 0, 'Person')

    # Create a QML engine.
    engine = QQmlApplicationEngine()

    # Create a component factory and load the QML script.
    engine.load('main.qml')
    engine.quit.connect(app.quit)

    app.exec()
