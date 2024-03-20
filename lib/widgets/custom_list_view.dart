import 'package:flutter/material.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return const CustomItem2();
    },);
  }
}
class CustomItem2 extends StatelessWidget {
  const CustomItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin:  const EdgeInsets.only(top: 8),
      decoration:  BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
