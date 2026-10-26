from PySide6.QtCore import QObject, Property, Signal
from PySide6.QtQml import QmlElement

from psutil import sensors_battery

# - Use global constants to specify import name and version for QML
QML_IMPORT_NAME = "Utils"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement  # @QmlElement registers the class for use in QML
class Battery(QObject):

    # ----- SIGNALS ----- #
    percent_sig = Signal(int)

    # ----- PROPERTIES ----- #
    @Property(int, notify=percent_sig, final=True)  # final simply means that this property cannot be overridden.
    def percent(self) -> int:
        return int(sensors_battery().percent)

