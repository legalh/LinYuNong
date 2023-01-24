import QtQuick 2.0

Item {

    // inputRectangle
    Rectangle{
        id: inputRectangle
        height:100
        width: 160

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 20
        color: "linen"
        // 生肖
        Text{
            id:inputAnimalText
            text:"生肖: "
            anchors.top:parent.top
            anchors.left:parent.left
            anchors.topMargin: 5
            height: 20
        }

        TextInput{
            id: inputAnimal
            KeyNavigation.tab: inputColor
            anchors.top: parent.top
            anchors.left: inputAnimalText.right
            anchors.topMargin: 5
            width:parent.width
            height: 20

            focus: true

            onAccepted: {
                outputAnimal.text += getText(0,inputAnimal.length)
                switch(getText(0, inputAnimal.length)){
                case '虎':
                    tiger = true;
                    console.log("生肖： 虎")
                    break;
                }
            }
        }
        //

        Text{
            id:inputColorText
            text:"颜色: "
            anchors.top:inputAnimalText.bottom
            anchors.left:parent.left
            anchors.topMargin: 5
            height: 20
        }
        TextInput{
            id: inputColor
            KeyNavigation.tab: inputNumber
            anchors.top: inputAnimal.bottom
            anchors.left: inputColorText.right
            anchors.topMargin: 5
            width:parent.width
            height: 20
        }

        //
        Text{
            id:inputNumberText
            text:"数字: "
            anchors.top:inputColorText.bottom
            anchors.left:parent.left
            anchors.topMargin: 5
            height: 20
        }

        TextInput{
            id: inputNumber
            KeyNavigation.tab: inputSingle
            anchors.top: inputColor.bottom
            anchors.left: inputNumberText.right
            anchors.topMargin: 5
            width:parent.width
            height: 20


        }
        //

        Text{
            id:inputSingleText
            text:"单双: "
            anchors.top:inputNumberText.bottom
            anchors.left:parent.left
            anchors.topMargin: 5
            height: 20
        }
        TextInput{
            id: inputSingle
            KeyNavigation.tab: inputAnimal
            anchors.top: inputNumber.bottom
            anchors.left: inputNumberText.right
            anchors.topMargin: 5
            width:parent.width
            height: 20

        }
    } // end-of-inputRectangle
}
