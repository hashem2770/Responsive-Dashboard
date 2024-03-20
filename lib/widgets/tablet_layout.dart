import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_list.dart';

import 'custom_list_view.dart';
import 'custom_sliver_grid.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
        slivers: [
          CustomHorizontalList(),
          CustomSliverListView()
        ]
    );
  }
}
