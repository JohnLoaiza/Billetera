import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:paybus/redimir.dart';
import 'main.dart';
class Home1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Color _colorbase =  Color(0xFF011C74);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.white,


        body: Center(
       child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/paybus.png',
              width: 200,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                    margin: EdgeInsets.all(10),
                  width: 90,
                  height: 80,
                  child: Center(
                    child:  RaisedButton(
                      color: Color(0xff65cc78),
                        onPressed: () {

                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.credit_card, size: 40, color: Colors.white,),
                            Text("Activar", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                        ),
                  )
                      ),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 80,
                    child: Center(
                      child:  RaisedButton(
                        color: Color(0xffcd3585),
                        onPressed: () {

                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.directions_bus, size: 40, color: Colors.white,),
                            Text("Comprar", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    )
                ),


              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 80,
                    child: Center(
                      child:  RaisedButton(
                        color: Color(0xffe93c54),
                        onPressed: () {
                          Navigator.of(context).push(
                              new CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                  new Redimir()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.loyalty, size: 40, color: Colors.white,),
                            Text("Redimir", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 80,
                    child: Center(
                      child:  RaisedButton(
                        color: Color(0xff59c0cd),
                        onPressed: () {

                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.swap_horiz, size: 40, color: Colors.white,),
                            Text("Transferir", style: TextStyle(color: Colors.white, fontSize: 13),)
                          ],
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    )
                ),


              ],
            ),
          ],

        ),
      ),
      )
    );
  }
}


