
import 'package:flutter/material.dart';
import 'package:responsive/views/home_view.dart';

void main() {
  runApp(const AdaptiveApp());
}

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice Responsive',
      home: HomeView(),
    );
  }
}
