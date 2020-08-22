
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:paybus/recargar.dart';
import 'home.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Home()

    );
  }
}



class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  Color _colorbase =  Color(0xFF011C74);
  int _currentIndex = 0;
  var _saldo = 10;
  final List<Widget> _children = [
    Home1(),
    Home1(),

  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(

          backgroundColor: Color(0xffd52f54),
          onPressed: () {
            Navigator.of(context).push(
                new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new Recargar()));
          },
          child: Icon(Icons.monetization_on),
        ),
        appBar: AppBar(
          backgroundColor: _colorbase,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {
                Navigator.of(context).push(
                    new CupertinoPageRoute(
                        builder: (BuildContext context) =>
                        new MenuDrawler()));
              },);
            },
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () {

              },
              color: _colorbase,
              child: Icon(Icons.notifications, color: Colors.white,),
            )
          ],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          fixedColor: _colorbase,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: _colorbase,
              icon: Icon(Icons.attach_money, color: _colorbase, size: 10,),
              title: Text('$_saldo', style: TextStyle(color: _colorbase, fontSize: 20),),

            ),
            BottomNavigationBarItem(
              backgroundColor: _colorbase,
              icon: Icon(Icons.add_shopping_cart, color: _colorbase, size: 30,),
              title: Text('', style: TextStyle(color: _colorbase, fontSize: 1)),
            ),

          ],
        ),
      )
    );
  }
  void onTabTapped(int index) {
    setState(()  {
      _currentIndex = index;
    });
  }
}

class MenuDrawler extends StatelessWidget {

  const MenuDrawler({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _colorbase =  Color(0xFF011C74);

    return Drawer(



      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: _colorbase,
            ),

            accountName: Text("Name"),
            accountEmail: Text("E-mail"),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.account_circle, color: _colorbase, size: 70,)

            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Tu Cuenta"),
            onTap: () {

            } ,
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Amigos"),
            onTap: () {

            } ,
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text("Mis cupones y fiados"),
            onTap: () {

            } ,
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("Historial"),
            onTap: () {

            } ,
          ),
        ],
      ),
    );
  }
}


