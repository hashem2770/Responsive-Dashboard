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

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          log(constraints.maxWidth.toString()); //minWidth:450
          return constraints.maxWidth < 800
              ? const MobileLayout()
              : const DesktopLayout();
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(8),
              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  index.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30),
                ),
              ));
        });
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(8),
                    color: Colors.cyan,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        index.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ));
              }),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            child: const Text('Desktop Layout'),
          )
        )
      ],
    );
  }
}
