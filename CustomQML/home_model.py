from PySide6.QtCore import QAbstractListModel, Qt, QByteArray, QModelIndex
from PySide6.QtQml import QmlElement

from typing import Any, Optional
from re import match
import os

QML_IMPORT_NAME = "Home"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement
class ExistingAppModel(QAbstractListModel):
    """
    This is used as a means of dynamically visualising all the currently existing apps downloaded by the user. In
    particular this will be used as a model for a GridView within QML to appropriately create visual app slots for each
    app.

    A collection of resources that were helpful are supplied below:

        - https://doc.qt.io/qt-6/qml-qtquick-gridview.html#add-signal
        - https://doc.qt.io/qtforpython-6/examples/example_qml_editingmodel.html
        - https://doc.qt.io/qtforpython-6/PySide6/QtCore/QAbstractListModel.html#PySide6.QtCore.QAbstractListModel
    """

    # - ROLES
    # Acquires unique identifiers for each new role
    Source = Qt.ItemDataRole.UserRole + 1

    def __init__(self):
        super().__init__()

        # A container for all the existing apps with the structure:
        #       { "name": str, "imagePath": str, "source": str }
        self.__apps: list[dict] = self.__get_apps()

    @staticmethod
    def __get_apps() -> list:
        """
        Returns a list of all the existing apps on the system.
        :return: list
        """
        return [
            {
                "name": app,
                "imagePath": f"{app}/icon.png",  # as this occurs within Apps/ only the designated app and icon need to be passed
                "source": f"Components/Apps/{app}/Source.qml"  # as this is passed to the 'body' loader, the full path is needed
            }
        # - Iterate across all the directories within Components/Apps
        for app in filter(lambda x: match(r"(.+)\.(.+)", x) is None, os.listdir("Components/Apps"))
        ]

    def rowCount(self, /, parent: QModelIndex = QModelIndex()) -> int:
        """
        Determines the number of data entries there are within this model
        :param QModelIndex parent: QModelIndex, A method that typically helps index the data you want, but as this list is flat
        (not multi-dimensional), this function call always returns an invalid model index that can be ignored.
        :return: int
        """
        return len(self.__apps)

    def roleNames(self) -> dict[int, QByteArray]:
        """
        Role names (or named properties) are typically stored as key-value pairs, where:
            - the key is an integer identifier for that role
            - the value being a byte-array (a string representation of that role).
        Essentially, this function returns all the properties that exist within QAbstractListModel
        :return: dict[int, QByteArray]
        """
        default_roles = super().roleNames()  # acquires the default roles/properties that come with QAbstractListModel like 'id'

        # Adds the custom user roles specific for this model's application
        default_roles[self.Source] = QByteArray(b"source")

        # Overrides the existing roles with a particular property name
        default_roles[Qt.ItemDataRole.DisplayRole] = QByteArray(b"name")
        default_roles[Qt.ItemDataRole.DecorationRole] = QByteArray(b"imagePath")

        return default_roles

    def data(self, index: QModelIndex, /, role: int = Qt.ItemDataRole.DisplayRole) -> Optional[Any]:
        """
        Returns the data that is under the given ``role``, for the row/item found by the ``index``.
        :param QModelIndex index: The position of the item to investigate.
        :param int role: The property's identifier
        :return: Optional[Any]
        """
        item = self.__apps[index.row()]  # processes the app data found at a particular row

        match role:
            case Qt.ItemDataRole.DisplayRole:  # the key data to be rendered in the form of text
                return item["name"]

            case Qt.ItemDataRole.DecorationRole:  # the decoration that holds a path/url to the app's image
                return item["imagePath"]

            case self.Source:
                return item["source"]

            case _:
                return None

