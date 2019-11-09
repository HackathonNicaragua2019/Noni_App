import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class FirtsQ extends StatefulWidget
{
  @override
  _FirtsQState createState() => _FirtsQState();
}

class _FirtsQState extends State<FirtsQ> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        decoration:  BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/bg.png"
          ""),
      fit: BoxFit.cover,
    ),
    ),
        child: new Center(

          child: new Column(
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              new RaisedButton(

                  onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}