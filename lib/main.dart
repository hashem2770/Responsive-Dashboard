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
    double width = MediaQuery.sizeOf(context).width;

    return  Scaffold(
      // appbar take 56 pixels of height by default
      appBar: AppBar(),
      body: ExampleExample(),
    );
  }
}

class ExampleExample extends StatelessWidget {
  const ExampleExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children:  [
        Expanded(child: Container(height: height/3,color: Colors.red,)),
        Container(height: height/3,color: Colors.blue,),
        Container(height: height/3,color: Colors.amberAccent,),
      ],
    );
  }
}
