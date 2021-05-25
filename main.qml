import QtQml.Models 2.2
import QtQml 2.2
import QtQuick.Window 2.15
import QtQuick 2.15


Window {
    //Fenster in groeße RPI Display
    id:rootwin
    width: 800
    height: 480
    visible: true
    title: qsTr("Tashi")
    //benötigte variablen
    property string operation
    property string input
    //Testfcn um Aufruf via Knopf zu testen
    function testfcn ()
    {
        console.log("Knopf geht")

    }
    //FCN wird aufgerufen um Eingabe zu verschicken
    function transmit()
    {

    }
    //FCN zerlegt und verpackt die Eingabe Normgerecht
    function splitandpack()
    {

    }
    //Write Operationstring via Touch
    function writeOperation(input)
    {
        operation = operation + input

        console.log(operation)
    }
    function clearOperation()
    {
        operation = ""

        console.log(operation)
    }
    function deleteLastInput()
    {
        console.log(operation)
    }

    Row{
        id: rendering
        spacing: 20

        Column{

            id: rechenoperationen
            spacing: 20

            MyButton{
                id:addition
                width: 125
                height: 40
                enabled: true
                text: qsTr("+")
                onClicked:{
                    testfcn ()
                    writeOperation("+")
                }

            }
            MyButton{
                id:subtraktion
                width: 125
                height: 40
                enabled: true
                text: qsTr("-")
                onClicked:{
                    testfcn ()
                    writeOperation("-")
                }
            }
            MyButton{
                id:division
                width: 125
                height: 40
                enabled: true
                text: qsTr("/")
                onClicked:{
                    testfcn ()
                     writeOperation("/")
                }
            }
            MyButton{
                id:multiplikation
                width: 125
                height: 40
                enabled: true
                text: qsTr("*")
                onClicked:{
                    testfcn ()
                    writeOperation("*")
                }
            }

            Row{
                spacing: 10

                Column{
                    spacing: 10

                    MyButton{
                        id:no1
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("1")
                        onClicked:{
                            testfcn ()
                            writeOperation("1")
                        }
                    }

                    MyButton{
                        id:no4
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("4")
                        onClicked:{
                            testfcn ()
                            writeOperation("4")
                        }
                    }

                    MyButton{
                        id:no7
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("7")
                        onClicked:{
                            testfcn ()
                            writeOperation("7")
                        }
                    }

                    MyButton{
                        id:no0
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("0")
                        onClicked:{
                            testfcn ()
                            writeOperation("0")
                        }
                    }
                }

                Column{

                    spacing: 10

                    MyButton{
                        id:no2
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("2")
                        onClicked:{
                            testfcn ()
                            writeOperation("2")
                        }
                    }

                    MyButton{
                        id:no5
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("5")
                        onClicked:{
                            testfcn ()
                            writeOperation("5")
                        }
                    }

                    MyButton{

                        id:no8
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("8")
                        onClicked:{
                            testfcn ()
                            writeOperation("8")
                        }
                    }

                    MyButton{
                        id:del
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("clc")
                        onClicked:{
                            testfcn ()
                            clearOperation()
                        }
                    }
                }

                Column{
                    spacing: 10

                    MyButton{
                        id:no3
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("3")
                        onClicked:{
                            testfcn ()
                            writeOperation("3")
                        }
                    }

                    MyButton{
                        id:no6
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("6")
                        onClicked:{
                            testfcn ()
                            writeOperation("6")
                        }
                    }

                    MyButton{
                        id:no9
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("9")
                        onClicked:{
                            testfcn ()
                            writeOperation("9")
                        }
                    }

                    MyButton{
                        id:back
                        width: 40
                        height: 40
                        enabled: true
                        text: qsTr("->")
                        onClicked:{
                            testfcn ()
                            deleteLastInput()
                        }
                    }
                }

             }


        }

        Rectangle{
           id:display
           width:600
           height:420
           color:"black"
        }

    }

}
