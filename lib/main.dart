import 'dart:async';
import 'package:load/load.dart';
import 'package:flutter/material.dart';
import 'package:noni/login.dart';


void main()
{
  runApp(LoadingProvider(
    child: MaterialApp(
      home: Loader(),
    ),
  ));
}

class Loader extends StatefulWidget
{

  @override
  _LoaderState createState() => new _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    _getThingsOnStartup().then((value){
      print('Async done');
    });
    super.initState();
  }

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              GestureDetector(
                onTap: () {

                },
                child: new Image(
                  image: AssetImage("assets/loader.jpg"),
                  fit: BoxFit.fitHeight,

                ),
              ),
            ],

          ),

        ),


    );
  }

  Future _getThingsOnStartup() async {
    showLoadingDialog();
    new Timer(const Duration(milliseconds: 3000), () {
      hideLoadingDialog();
      Navigator.push(context,
          new MaterialPageRoute(builder: (context)=> new Login()));
    } );

  }
}






