import 'package:flutter/material.dart';

class DividerSpace extends StatelessWidget {
  const DividerSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 5,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 51, 6, 6),
        ),
      ),
    );
  }
}