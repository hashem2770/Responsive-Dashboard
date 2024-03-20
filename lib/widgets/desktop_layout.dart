import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_desktop_widget.dart';
import 'package:responsive/widgets/custom_drawer.dart';
import 'package:responsive/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        SizedBox(width: 14,),
        Expanded(flex: 1,child: CustomDesktopWidget())
      ]
    );
  }
}
