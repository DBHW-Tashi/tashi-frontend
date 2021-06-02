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
    //Testfcn um Knopf zu testen
    function testfcn ()
    {
        console.log("-")

    }
    //FCN wird aufgerufen um Eingabe zu verschicken
    //FCN zerlegt und verpackt die Eingabe Normgerecht


    //JSON.stringify(operation)



    function transmit(){

        var HttpClient = function() {
            this.get = function(aUrl, aCallback) {
                var anHttpRequest = new XMLHttpRequest();
                anHttpRequest.onreadystatechange = function() {
                    if (anHttpRequest.readyState === 4 && anHttpRequest.status === 200)
                        aCallback(anHttpRequest.responseText);
                }

                anHttpRequest.open( "GET", aUrl, true );
                anHttpRequest.send( null );
            }
        }
        var client = new HttpClient();
        console.log("test")
        client.get('http://pass.anticitizen.space/test', function(response) {
            console.log(response)
            writeOperation(response)
        });

    }
    //Write Operationstring via Touch
    function writeOperation(input)
    {
        operation = operation + input

        console.log(operation)
    }
    //function - clear screen/string
    function clearOperation()
    {
        operation = ""

        console.log(operation)
    }
    //function delete last Number of operation
    function deleteLastInput()
    {
        operation = operation.substr(0, operation.length - 1);
        console.log(operation)
    }

    Row{
        id: layoutGridRow
        spacing: 5

        Column{
            id:test
            spacing: 5

            Image{

                id: imagetashi
                height: 180
                width: 180
                source: "qrc:/tashi.jpg"

            }

        Row{
            spacing:5

        Column{
            id:layoutGridColumn1
               spacing: 5

               MyButton{
                   id:clear
                   width: 40
                   height: 40
                   enabled: true
                   text: qsTr("clc")
                   onClicked:{
                       testfcn ()
                       clearOperation()
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
                   id:noPro
                   width: 40
                   height: 40
                   enabled: true
                   text: qsTr("%")
                   onClicked:{
                       testfcn ()
                       writeOperation("%")
                   }
               }

        }

        Column{

            id:layoutGridColumn2
            spacing:5

            MyButton{
                id:division
                width: 40
                height: 40
                enabled: true
                text: qsTr("/")
                onClicked:{
                    testfcn ()
                     writeOperation("/")
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

                id:layoutGridColumn3
                spacing:5

                MyButton{
                    id:multiplikation
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr("*")
                    onClicked:{
                        testfcn ()
                        writeOperation("*")
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
                    id:del
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr(",")
                    onClicked:{
                        testfcn ()
                        writeOperation(",")
                    }
                }

            }

            Column{

                id:layoutGridColumn4
                spacing:5

                MyButton{
                    id:back
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr("<-")
                    onClicked:{
                        testfcn ()
                        deleteLastInput()
                    }
                }

                MyButton{
                    id:addition
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr("+")
                    onClicked:{
                       transmit();
                    }

                }
                MyButton{
                    id:subtraktion
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr("-")
                    onClicked:{
                        testfcn ()
                        writeOperation("-")
                    }
                }
                MyButton{
                    id:exp
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr("exp")
                    onClicked:{
                        testfcn ()
                        writeOperation("exp")
                    }
                }
                MyButton{
                    id:solve
                    width: 40
                    height: 40
                    enabled: true
                    border.color: "black"
                    text: qsTr("=")
                    onClicked:{
                        testfcn ()
                        splitandpack()

                    }
                }

            }
        }
        }


        Rectangle{
            id:display
            width:600
            height:420
            color:"Lightgrey"
            border.color: "Black"
            border.width: 2

            Text{
                id: outputText
                font.pixelSize: 18
                padding: 10
                text: operation

            }

         }


    }


}

