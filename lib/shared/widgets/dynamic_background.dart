import 'package:flutter/material.dart';

class DynamicBackground extends StatelessWidget {
  final Widget child;
  final List<Color>? gradientColors;
  
  const DynamicBackground({
    super.key,
    required this.child,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors ?? [
            Colors.blue.shade50,
            Colors.blue.shade100,
          ],
        ),
      ),
      child: child,
    );
  }
}
