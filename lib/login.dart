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
        color: Colors.blueAccent,

        child: new Center(

          child: Builder(
            builder: (context) =>(
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Center(

                      child: new Column(
                        children: <Widget>[

                        ],
                      ),
                    ),
                    new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(30),
                        child: new Column(
                          children: <Widget>[
                            new TextField(
                              decoration: new InputDecoration(
                                  hintText: "Nombre Usuario",
                                  icon: new Icon(Icons.person)
                              ),
                            ),
                            new TextField(
                              obscureText: true,
                              decoration: new InputDecoration(
                                  hintText: "Contraseña",
                                  icon: new Icon(Icons.lock)
                              ),

                            ),
                            new GestureDetector(
                                onTap: (){
                                  Scaffold.of(context).showSnackBar(
                                      new SnackBar(
                                        content: new Text("Te enviaremos correo con tu contraseña"),
                                        duration: new Duration(seconds: 5),

                                      )
                                  );

                                }
                                ,
                                child:
                                new Container(
                                  padding: new EdgeInsets.only(top:15.0),
                                  child: new Text("¿Olvidaste la contraseña?",style: new TextStyle(fontSize: 14.0),textAlign: TextAlign.right),
                                )
                            ),

                            new ButtonTheme(
                              minWidth: 200.0,
                              child: new RaisedButton(

                                child: new Text("Iniciar"),
                                  textColor: Colors.white,
                                  color: Colors.blueAccent,


                                  onPressed: (){}),

                            ),
                            new Container(
                              padding: EdgeInsets.only(top:35.0),
                                child: new Divider(

                                  color: Colors.grey,
                                  height: 2.0,)
                            ),
                            new Container(
                              padding: EdgeInsets.only(top:20.0),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Icon(Icons.brightness_auto,size: 55.0,),
                                  new Icon(Icons.person,size: 55.0,),
                                  new Icon(Icons.gamepad,size: 55.0,),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    new Container(

                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text("Términos y Condiciones",style: new TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
                        ],
                      ),

                    )


                  ],
                )
            )
            ,
          )
        ),
      ),
    );
  }
}