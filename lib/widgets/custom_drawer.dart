import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.grey[200],
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite, size: 100),
          ),
          CustomDrawerItem(),
          CustomDrawerItem(),
          CustomDrawerItem(),
          CustomDrawerItem(),
        ],
      ),
    );
  }
}
