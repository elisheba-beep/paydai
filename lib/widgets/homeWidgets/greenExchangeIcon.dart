import 'package:flutter/material.dart';

class GreenExchangeIcon extends StatelessWidget {
  const GreenExchangeIcon({
    this.left,
    this.right,
    this.top,
    this.bottom,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      left: left,
      top: top,
      bottom: bottom,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.green[100],
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              icon,
              color: Colors.green,
              size: 14,
            ),
          ),
        ),
      ),
    );
  }
}
