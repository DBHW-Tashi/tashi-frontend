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
    //FCN wird aufgerufen um Eingabe zu verschicken
    function transmit() {
        var request = new XMLHttpRequest();
        var params = JSON.stringify({"exp":operation});

        request.open('POST', 'http://pass.anticitizen.space/compute', true);
        request.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        request.send(params);

        request.onload = function() {
            console.log(request.responseText);
            console.log(JSON.parse(request.responseText).result);
            showResult(JSON.parse(request.responseText).result);
        }
    }
    //ergebnis ausgeben
    function showResult(result)
    {
        operation = operation + '\n'+"=" + result;
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
                        writeOperation(".")
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
                        writeOperation("+")
                    }
                }
                MyButton{
                    id:subtraktion
                    width: 40
                    height: 40
                    enabled: true
                    text: qsTr("-")
                    onClicked:{
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
                         transmit()
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

