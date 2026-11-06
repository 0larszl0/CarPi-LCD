import QtQuick
import QtQuick.Controls


Item {

    Column {

        Row {
            ComboBox {model: ["Apps", "Fonts", "Themes"]}
            TextField {width: 100}
        }


        Rectangle {width: 100; height: 100; color: "red"}

        Row {

        }

    }

}