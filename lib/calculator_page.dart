import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
      backgroundColor: Colors.tealAccent[400],
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text('$operationText', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),),
              ),
            ),),

          Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('$result', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),),
            ),),
          SizedBox(height: 150,),
          Expanded(
            child: Container(
              color: Colors.pinkAccent[100],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              operationText = "";
                              result = "";
                            });
                            },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "AC",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              operationText = operationText.substring(0, operationText.length-1);
                            });

                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Icon(Icons.backspace_outlined,size: 35,),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {

                            if(operationText.isNotEmpty){
                              setState(() {
                                operationText += "%";
                              });
                            }


                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "%",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            if(operationText.isNotEmpty){
                              setState(() {
                                operationText += "/";
                              });
                            }
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "/",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
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
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "7";

                          });},
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "7",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                          setState(() {
                          operationText += "8";
                          });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "8",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                          setState(() {
                          operationText += "9";
                          });
                          },

                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "9",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if(operationText.isNotEmpty){
                                setState(() {
                                  operationText += "*";
                                });
                              }
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "*",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
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
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "4";
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "4",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "5";
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "5",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "6";
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "6",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if(operationText.isNotEmpty){
                                setState(() {
                                  operationText += "-";
                                });
                              }
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "-",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
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
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "1";
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "1",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "2";
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "2",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                                operationText += "3";
                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "3",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if(operationText.isNotEmpty){
                                setState(() {
                                  operationText += "+";
                                });
                              }

                            });
                          },
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "+",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
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
                      RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            if(operationText.isNotEmpty)
                              operationText += ".";
                          });
                        },
                        elevation: 2.0,
                        fillColor: Colors.grey[350],
                        child: Text(
                          ".",style: TextStyle(fontSize: 30),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
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