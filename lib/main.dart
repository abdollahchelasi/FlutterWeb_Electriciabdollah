
import 'package:control/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'الکتریکی عبدالله',
      home: Electrici(),
    );
  }
}

class Electrici extends StatefulWidget {
  @override
  _ElectriciState createState() => _ElectriciState();
}

class _ElectriciState extends State<Electrici> {





  @override
  Widget build(BuildContext context) {


    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(



        body: Home(),



      ),
    );

  }

}

