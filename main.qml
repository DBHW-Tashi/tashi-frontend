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
