import 'package:flutter/material.dart';

const textPaddingConst = EdgeInsets.fromLTRB(16.0, 58.0, 16.0, 16.0);
const overlayPaddingConst = EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0);
//indicates extra Text widget visibility
//approach found in
var _visible = true;

var container = Opacity(
  //semi-transparent if _visible = true
  opacity: _visible ?0.5 : 0.0,
    child:Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.purple,
        width: 250.0,
        height: 300.0,
        margin: overlayPaddingConst,
        child: Center(
          child: Text(
            "this is another hello from separate container",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.amber,
                backgroundColor: Colors.lightGreenAccent),
          ),
        ),

      ),
    ));

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello Rectangle'),
      ),
      body: HelloRectangle(),
    ),
  ));
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

      child:Stack(
        children: <Widget>[

          Center(

            child: Container(
                padding: textPaddingConst,
                color: Colors.green[300],
                height: 400.0,
                width: 300.0,


                  child: Align(
                    alignment: Alignment.topCenter,
                      child: Text(
                    'Hello!',

                    style: TextStyle(fontSize: 40.0),

                  )),
                ),
          ),
          container,

        ],
      )
      );
  }
}
