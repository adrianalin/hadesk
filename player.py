from PyQt5.QtCore import pyqtProperty, pyqtSlot, QObject, pyqtSignal


class Player(QObject):
    stateChanged = pyqtSignal('QString')

    def __init__(self, parent=None):
        super().__init__(parent)

        # play/pause/stop
        self._state = ''

    @pyqtProperty('QString')
    def media_title(self):
        print("media_title")

    @pyqtProperty('QString', notify=stateChanged, fset="state")
    def state(self):
        print("state: ", self._state)
        return self._state

    @state.setter
    def state(self, param):
        if self._state != param:
            print("set state: ", param)
            self._state = param
            self.stateChanged.emit(param)

    @pyqtProperty('QString')
    def source(self):
        print("Source")

    @pyqtSlot()
    def turn_on(self):
        print("turn on")

    @pyqtSlot()
    def media_play(self):
        print("play")

    @pyqtSlot()
    def media_pause(self):
        print("pause")

    @pyqtSlot()
    def media_stop(self):
        print("pause")

    @pyqtSlot()
    def media_next_track(self):
        print("next")

    @pyqtSlot()
    def media_previous_track(self):
        print("previous")

    @pyqtSlot()
    def volume_up(self):
        print("volume_up")

    @pyqtSlot()
    def volume_down(self):
        print("volume_down")

    @pyqtSlot()
    def source_list(self):
        print("show_list")