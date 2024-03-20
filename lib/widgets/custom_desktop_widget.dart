import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(

            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(

          flex: 1,
          child: Container(

            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ],
    );
  }
}
