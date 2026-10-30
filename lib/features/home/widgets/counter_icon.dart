import 'package:flutter/material.dart';

class CounterIcon extends StatelessWidget {
  const CounterIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(icon, size: 18, color: Color(0xff7F4E1D)),
    );
  }
}
