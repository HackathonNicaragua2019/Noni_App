import 'package:flutter/material.dart';

void main()
{
  runApp(new MaterialApp(
    title: "Bienvenidos a NoNi",
    home: Loader(),
  ));
}

class Loader extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    return new Container(
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1,  0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xff87C93E),
            Color(0xff46C9C3),
          ],
        ),
      ),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Image(
                image: AssetImage("assets/loader.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ],
          ),


        ),


    );
  }
  
}




