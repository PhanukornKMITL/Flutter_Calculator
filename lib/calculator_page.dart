import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'button_generator.dart';


class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  String operationText = "";
  String result = "";







  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              color: Colors.tealAccent,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text('$operationText', style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white,letterSpacing: 2),),
                ),
              ),),
          ),

          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              color: Colors.tealAccent[100],
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text('$result', style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2),),
              ),),
          ),

          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          btnFunction: (){
                            setState(() {
                              operationText = "";
                              result = "";
                            });

                          },
                          text: "AC",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          btnFunction: (){
                            setState(() {
                              operationText = operationText.substring(0,operationText.length-1);
                            });
                          },
                          text: "Del",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          btnFunction: (){
                            if(operationText.isNotEmpty){
                              setState(() {
                                operationText += "%";
                              });
                            }
                          },
                          text: "%",
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          btnFunction: (){
                            if(operationText.isNotEmpty){
                              setState(() {
                                operationText += "/";
                              });
                            }
                          },
                          text: "/",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "7",
                          btnFunction: () {
                            setState(() {
                              operationText += "7";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                        child:ButtonGenerator(
                          text: "8",
                          btnFunction: () {
                            setState(() {
                              operationText += "8";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "9",
                          btnFunction: () {
                            setState(() {
                              operationText += "9";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "*",
                          btnFunction: () {
                            if (operationText.isNotEmpty) {
                              setState(() {
                                operationText += "*";
                              });

                            }
                          }

                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "4",
                          btnFunction: () {
                            setState(() {
                              operationText += "4";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "5",
                          btnFunction: () {
                            setState(() {
                              operationText += "5";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "6",
                          btnFunction: () {
                            setState(() {
                              operationText += "6";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "-",
                          btnFunction: (){
                            if(operationText.isNotEmpty){
                              setState(() {
                                operationText += "-";
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "1",
                          btnFunction: () {
                            setState(() {
                              operationText += "1";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "2",
                          btnFunction: () {
                            setState(() {
                              operationText += "2";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "3",
                          btnFunction: () {
                            setState(() {
                              operationText += "3";
                            });},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: ButtonGenerator(
                          text: "+",
                          btnFunction: (){
                            if(operationText.isNotEmpty){
                              setState(() {
                                operationText += "+";
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(800.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                              primary: Colors.red
                          ),
                          child: Container(
                            width: 125,
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Text(
                              '0',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                                operationText += "0";
                            });
                          },
                        ),
                      ),
                      ButtonGenerator(
                        text: ".",
                        btnFunction: (){
                          if(operationText.isNotEmpty){
                            setState(() {
                              operationText += ".";
                            });
                          }
                        },
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          try{
                            Parser p = Parser();
                            Expression exp = p.parse(operationText);
                            ContextModel cm = ContextModel();
                            double eval = exp.evaluate(EvaluationType.REAL, cm);
                            setState(() {
                              result = eval.toString();

                            });
                          }catch(e){
                            setState(() {
                              result = "Error";
                            });

                          }



                        },
                        elevation: 2.0,
                        fillColor: Colors.grey[350],
                        child: Text(
                          "=",style: TextStyle(fontSize: 30),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}