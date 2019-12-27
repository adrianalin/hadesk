from PyQt5.QtCore import pyqtProperty, pyqtSlot, QObject


class Player(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)

        self._name = ""

    @pyqtProperty('QString')
    def name(self):
        return self._name

    @name.setter
    def name(self, name):
        self._name = name

    @pyqtSlot()
    def play(self):
        print("Play")
