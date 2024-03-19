import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    log(height.round().toString());
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.amberAccent,height: height*.25,),
          Container(color: Colors.blue,height: height*.25,),
          Container(color: Colors.red,height: height*.25,),
        ],
      ),
    );
  }
}
