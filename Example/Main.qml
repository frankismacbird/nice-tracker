import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    // Set the dimensions of the display
    width: 300
    height: 200
    visible: true // Set the display to be visible
    title: "Hello World" // Give the display a title

    readonly property list<string> texts: ["Hello there",
    "Hey mamas", "How's it going", "Wowee"] // Creates an array of stuff to be indexed later

    function setText() { // Create a random number variable and assign the "text" item a random index of the string list "texts"
        var i = Math.round(Math.random() * 3)
        text.text = texts[i] // I believe this is the "Text" under ColumnLayout that has the id "text"
    }

    ColumnLayout {
        anchors.fill: parent // Idk what this means

        Text { // Creates permanent text that doesn't change
            id: text
            text: "Hello World"
            Layout.alignment: Qt.AlignHCenter
        }
        Button { // Creates a clickable button that executes an action once clicked
            text: "Click me"
            Layout.alignment: Qt.AlignHCenter
            onClicked: setText() // When button clicked, execute setText()
        }
    }
}