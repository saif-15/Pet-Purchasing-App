import 'package:flutter/material.dart';
import 'package:pet_purchasing_app/animated_drawer.dart';
import 'package:pet_purchasing_app/colors.dart';
import 'package:pet_purchasing_app/drawer.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
fontFamily: 'Montserrat'
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            MyDrawer(),
            HomePage()
          ],
        ),
      ),
    );
  }
}


