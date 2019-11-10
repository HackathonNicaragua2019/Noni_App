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
        color: Color(0xff39414E),

        child: new Center(
          child: Builder(

            builder: (context) =>(
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(top: 50.0),

                      child: new Column(

                          children: <Widget>[
                                GestureDetector(
                                    onTap: () {

                                },
                                child: new Image(
                                image: AssetImage("assets/logo-noni.png"),
                                width: 250.0

                          )),
                            new Container
                              (
                              child: new Container(
                                padding: new EdgeInsets.only(top:35.0),
                                  child: new Text("Iniciar Sesión",style: new TextStyle(fontSize: 24.0,color: Colors.white),)
                              ),
                            )

                        ],
                      ),
                    ),
                    new Container(
                      child: new Container(
                        padding: new EdgeInsets.only(bottom: 30,left: 30.0, right: 30.0),
                        child: new Column(
                          children: <Widget>[
                            new Theme(
                                data: new ThemeData(
                                    primaryColor: Colors.white,
                                    accentColor: Colors.white,
                                    hintColor: Colors.white,

                                ),
                                child: new TextField(
                              decoration: new InputDecoration(
                                hintText: "Nombre Usuario",
                                icon: new Icon(Icons.person,color: Colors.white,),
                              ),

                            )),
                            new TextField(
                              cursorColor: Colors.white,
                              obscureText: true,
                              decoration: new InputDecoration(
                                  hintText: "Contraseña",
                                  icon: new Icon(Icons.lock,color: Colors.white,),
                              ),

                            ),
                            new GestureDetector(
                                onTap: (){
                                  Scaffold.of(context).showSnackBar(
                                      new SnackBar(
                                        content: new Text("Te enviaremos correo con tu contraseña",style: new TextStyle(color: Color(0xff008FC9) ),),
                                        duration: new Duration(seconds: 5),

                                      )
                                  );

                                }
                                ,
                                child:
                                new Container(
                                  padding: new EdgeInsets.only(top:15.0),
                                  child: new Text("¿Olvidaste la contraseña?",style: new TextStyle(fontSize: 14.0,color: Color(0xff008FC9)),textAlign: TextAlign.right),
                                )
                            ),

                            new ButtonTheme(
                              minWidth: 200.0,
                              child: new RaisedButton(

                                child: new Text("Iniciar",style: new TextStyle(fontSize: 16.0),),
                                  textColor: Colors.white,
                                  color: Color(0xff5ACA2A),

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
                                  GestureDetector(
                                  onTap: () {

                            },
                                child: new Container(
                                  padding: EdgeInsets.only(right: 10.0),
                                    child: new Image(
                                      image: AssetImage("assets/btn-fb.png"),
                                      width: 50.0,

                                    )
                                )),
                                  GestureDetector(
                                      onTap: () {

                                      },
                                      child:
                                  new Container(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: new Image(
                                        image: AssetImage("assets/btngt.png"),
                                        width: 50.0

                                    ),
                                  ))
                                  ,
                                  GestureDetector(
                                      onTap: () {

                                      },
                                      child: new Image(
                                          image: AssetImage("assets/btntwt.png"),
                                          width: 50.0
                                      )),


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
                          new Text("Términos y Condiciones",style: new TextStyle(fontSize: 14.0,color: Color(0xff008FC9)),textAlign: TextAlign.center),
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