import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noni/bienvenida.dart';

class SeconQ extends StatefulWidget
{
  @override
  _SeconQState createState() => new _SeconQState();

}
class _SeconQState extends State<SeconQ>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        
      ),
        body: new Container
    (child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:
            new Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top:55.0) ,
                    child: new Image(image: AssetImage("assets/logo-noni.png"), width: 290.0,),
                  ), new Container(
                      padding: EdgeInsets.only(top:35.0) ,
                    child: new Column(

                      children: <Widget>[
                        new Text("¿Cuál es tu Sexo?", style: new TextStyle(fontSize: 28.0),),
                      ],
                    ),

                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Center(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {

                                },
                                child:
                                new Container(

                                  padding: EdgeInsets.only(right: 50.0, top: 50.0),
                                  child: new Image(
                                      image: AssetImage("assets/btn-male.png"),
                                      width: 90.0

                                  ),
                                ))
                            ,
                            GestureDetector(
                                onTap: () {

                                },
                                child:
                                new Container(
                                    padding: EdgeInsets.only(right: 20.0, top: 50.0),
                                    child: new Image(
                                    image: AssetImage("assets/btn-female.png"),
                                    width: 90.0
                                ))),


                          ],
                        )

                    ),

                  )
                ,new Container(
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
                          "Conocer el sexo nos permite generar los Ejercicios y Alimentos adecuados para ti, mejorando el contenido y alertas que vayas a necesitar",
                          style:new TextStyle( fontSize: 16),textAlign: TextAlign.center,)
                      ],
                    ),

                  ),
                  new Container(
                      padding: EdgeInsets.all(30.0),
                      child: new Divider(

                        color: Colors.grey,
                        height: 2.0,)
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: 35.0),
                    child: new Column(
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    new MaterialPageRoute(builder: (context)=> new SeconQ()));

                              },
                              child: new Image(
                                image: AssetImage("assets/btn-next.png"),
                                width: 350,
                              )
                          )
                        ]
                    ),

                  ),
                ],
              ),
            ),
          ),
        ));
  }

}