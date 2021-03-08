import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
    debugShowCheckedModeBanner: false,
  ));
}


class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('Number', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),),
            ),
          ),),

          Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('Result', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),),
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
                          onPressed: () {},
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
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "+/-",style: TextStyle(fontSize: 30),
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0.0, 0.0),
                        child: RawMaterialButton(
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[350],
                          child: Text(
                            "X",style: TextStyle(fontSize: 30),
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.grey[350],
                        child: Text(
                          ".",style: TextStyle(fontSize: 30),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
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
