import 'package:flutter/material.dart';
import './about.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String backImg = "https://images.pexels.com/photos/1546901/pexels-photo-1546901.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  String profileImg = "https://i.pravatar.cc/300";
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SideMenu')),
         drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('Bisesh'),  
                accountEmail: new Text('hbisesh19@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(profileImg),
                ),
                // decoration: new BoxDecoration(
                //   image: new DecorationImage(
                //     fit: BoxFit.fill,
                //     image: NetworkImage(backImg)
                //   ),
                // ),
               ),
              new ExpansionTile(
                title: new Text("Profile"),
                children: <Widget>[
                 new ListTile(
                   title: new Text('settings'),
                    trailing: Icon(Icons.settings),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AboutPage()));
                     }
                 ),
                  new ListTile(
                    title: new Text('Account'),
                    trailing: Icon(Icons.account_box),
                     onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AboutPage()));
                     }
                  ), 
                ]
               ),
               new ListTile(
                 title: new Text('About'),
                 trailing: Icon(Icons.info),
                 onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AboutPage()));
                 }
               )
            ],
          ),
        ),
     );
  }
}

