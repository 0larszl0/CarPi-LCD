from PySide6.QtCore import QObject, Property, Signal
from PySide6.QtQml import QmlElement

from psutil import sensors_battery
from datetime import datetime

# - Use global constants to specify import name and version for QML
QML_IMPORT_NAME = "Utils"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement  # @QmlElement registers the class for use in QML
class Device(QObject):
    """
    Addresses any system information or states that may be relevant
    """

    # ----- SIGNALS ----- #
    charge_sig = Signal(int)

    # ----- PROPERTIES ----- #
    # final simply means that this property cannot be overridden.
    @Property(int, notify=charge_sig, final=True)
    def charge(self) -> int:
        return int(sensors_battery().percent)


@QmlElement
class TimeTell(QObject):
    """
    Handles any time related information
    """

    # ----- SIGNALS ----- #
    time_change = Signal(str)

    # ----- PROPERTIES ----- #
    @Property(str, notify=time_change, final=True, constant=False)
    def current_hhmmss(self) -> str:
        return datetime.now().strftime("%H:%M:%S")

