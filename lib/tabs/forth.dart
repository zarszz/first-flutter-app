import 'package:flutter/material.dart';

class Forth extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.access_time,
              size: 150.0,
              color: Colors.redAccent,
            ),
            new Text("Test 1 ")
          ],
        )
      ),
    );
  }
}