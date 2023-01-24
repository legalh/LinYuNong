import QtQuick 2.0

Item {
    // outputRectangle
    Rectangle{
        id: outputRectangle
        height: inputRectangle.height
        width: inputRectangle.width

        anchors.top: inputRectangle.bottom
        anchors.left: parent.left
        anchors.topMargin: 20
        color: "linen"

        Text{
            id:outputAnimal
            text: "生肖选择: "

            anchors.top: parent.top
            anchors.left: parent.left
            width:parent.width
            height:20
        }
    }
}
