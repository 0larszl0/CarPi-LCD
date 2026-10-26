from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtGui import QGuiApplication

import sys
from pathlib import Path

# Adding noqa to a line indicates to the linter that code quality for that line should be ignored (NO-Quality-Assurance)
from PyScripts import utils  # noqa


def main() -> tuple[int, QQmlApplicationEngine]:
    """
    The high-level logic that starts the Qt application.
    :return: int
    """
    app = QGuiApplication(sys.argv)  # inits the application window and handles the main event loop
    engine = QQmlApplicationEngine("Main.qml")

    return app.exec(), engine


if __name__ == "__main__":
    exit_code, qml_engine = main()

    del qml_engine
    sys.exit(exit_code)

    # """     We recommend that you connect clean-up code to the aboutToQuit() signal,
    #         instead of putting it in your application's main() function.
    #         This is because, on some platforms, the QApplication::exec() call may not return.   """

