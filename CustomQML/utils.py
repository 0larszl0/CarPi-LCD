from PySide6.QtCore import QObject, Property, Signal, Slot
from PySide6.QtQml import QmlElement

from psutil import sensors_battery
from datetime import datetime

# - Use global constants to specify import name and version for QML
QML_IMPORT_NAME = "Utils"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement  # @QmlElement registers the class for use in QML
class Battery(QObject):

    # ----- SIGNALS ----- #
    percent_sig = Signal(int)

    # ----- PROPERTIES ----- #
    # final simply means that this property cannot be overridden.
    @Property(int, notify=percent_sig, final=True)
    def percent(self) -> int:
        return int(sensors_battery().percent)


@QmlElement
class Clock(QObject):

    # ----- SIGNALS ----- #
    time_change = Signal(str)

    # ----- PROPERTIES ----- #
    @Property(str, notify=time_change, final=True, constant=False)
    def current_hhmmss(self) -> str:
        return datetime.now().strftime("%H:%M:%S")

