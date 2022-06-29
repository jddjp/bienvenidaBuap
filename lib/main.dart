import 'package:bienvenida_buap/views/drawer_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DrawerView(),
        appBar: AppBar(
          actions: <Widget>[
            Image.asset('assets/images/logobuap.png', fit: BoxFit.cover),
          ],

          //centerTitle: true,

          // title: Image.asset('assets/images/logobuap.png', fit: BoxFit.cover),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
