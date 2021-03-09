import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonGenerator extends StatelessWidget {
  final Function btnFunction;
  ButtonGenerator({this.btnFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: btnFunction,
      elevation: 2.0,
      fillColor: Colors.grey[350],
      child: Text(
        "AC",style: TextStyle(fontSize: 30),
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}




