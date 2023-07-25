import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeAppBarAction extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  const HomeAppBarAction({
    required this.onTap,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(icon),
      ),
    );
  }
}
