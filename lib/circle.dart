

import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colour,
      ),
    );
  }
}