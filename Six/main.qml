import QtQuick 2.12
import QtQuick.Window 2.12

Window {

    width: 720
    height: 480
    visible: true
    title: qsTr("六合彩")

    // 生肖
    property bool rat: false;
    property bool ox: false;
    property bool tiger: false;
    property bool rabbit: false;
    property bool dragon: false;
    property bool snake: false;
    property bool horse: false;
    property bool sheep: false;
    property bool monkey: false;
    property bool rooster: false;
    property bool dog: false;
    property bool pig: false;

    // 颜色：蓝、红、绿
    property bool blue: false;
    property bool red: false;
    property bool green: false;

    // 大小：1-24小，25-49大
    property bool smallNumber:false;

    // 单双
    property bool single: false;

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
        // 颜色
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

            //
            onAccepted: {
                outputColor.text += getText(0,inputColor.length)
                switch(getText(0, inputColor.length)){
                case '红':
                    red = true;
                    console.log("颜色:红")
                    break;
                }
            }
        }

        // 大小
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

            //
            onAccepted: {
                outputNumber.text += getText(0,inputNumber.length)
                switch(getText(0, inputNumber.length)){
                case '小':
                    smallNumber = true;
                    console.log("大小：小")
                    break;
                }
            }
        }

        // 单双
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
            //
            onAccepted: {
                outputSingle.text += getText(0,inputSingle.length)
                switch(getText(0, inputSingle.length)){
                case '单':
                    single = true;
                    console.log("单双： 单")
                    break;
                }
            }
        }
    } // end-of-inputRectangle

    // 输出结果
    // outputRectangle
    Rectangle{
        id: outputRectangle
        height: inputRectangle.height
        width: inputRectangle.width

        anchors.top: inputRectangle.bottom
        anchors.left: parent.left
        anchors.topMargin: 20
        color: "linen"
        // 生肖
        Text{
            id:outputAnimal
            text: "生肖选择: "

            anchors.top: parent.top
            anchors.left: parent.left
            width:parent.width
            height:20
        }

        // 颜色
        Text{
            id:outputColor
            text: "颜色选择: "

            anchors.top: outputAnimal.bottom
            anchors.left: parent.left
            width:parent.width
            height:20
        }
        // 大小
        Text{
            id:outputNumber
            text: "大小选择: "

            anchors.top: outputColor.bottom
            anchors.left: parent.left
            width:parent.width
            height:20
        }
        // 单双
        Text{
            id:outputSingle
            text: "单双选择: "

            anchors.top: outputNumber.bottom
            anchors.left: parent.left
            width:parent.width
            height:20
        }
    }

}
