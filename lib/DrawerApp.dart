
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer:  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header test',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: (){
                  print("Ramesh");
                },
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('Address'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Orders'),
              ),
              ListTile(
                leading: Icon(Icons.live_help),
                title: Text('Support'),
              ),
            ],
          ),
        ),
        body:Container(
          child: Center(
            child: Text("Home Page"),
          ),
        ),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
