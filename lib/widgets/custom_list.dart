import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_item.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
          return AspectRatio(aspectRatio: 1,child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CustomItem(),
          ));
        }),
      ),
    );
  }
}
