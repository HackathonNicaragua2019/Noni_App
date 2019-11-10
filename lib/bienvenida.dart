import 'package:flutter/material.dart';
import 'package:noni/SecondQ.dart';

class FirstQ extends StatefulWidget
{
  @override
  _FirstQSate createState() => new _FirstQSate();


}

class _FirstQSate extends State<FirstQ>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appBar: new AppBar(),
      body: new Container(

        color: Color(0xff39414E),
        child: new Center(

          child: new Column(

            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 35.0),
                child: new Column(
                  children: <Widget>[
                  new Text("Bienvenidos", style: new TextStyle(fontSize: 28.0, color: Colors.white),)
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 100.0),
                child: new Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {

                      },
                      child: new Image(
                        image: AssetImage("assets/mascota.png"),
                        width: 250.0
                      )
                    )
                  ]
                ),

              ),
              new Container(
                  padding: EdgeInsets.all(30.0),
                  child: new Divider(

                    color: Colors.grey,
                    height: 2.0,)
              ),
              new Container(
                padding: EdgeInsets.only(left:30.0,right: 30.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                        "A continuación NoNi brindará la opción de personalizar tu rutina y la guía nutrcional si contestas las preguntas a continuación",
                    style:new TextStyle(color: Colors.white, fontSize: 16),textAlign: TextAlign.center,)
                  ],
                ),
              ),
              new Container(
                  padding: EdgeInsets.all(35.0),
                  child: new Divider(

                    color: Colors.grey,
                    height: 2.0,)
              ),
              new Container(
                child: new Column(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context)=> new SeconQ()));

                          },
                          child: new Image(
                              image: AssetImage("assets/btn-cperfil.png"),
                              width: 350,
                          )
                      )
                    ]
                ),

              ),

            ],
          ),
        ),

      )
    );
  }

}