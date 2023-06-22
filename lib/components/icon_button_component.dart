import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color? color;
  final Function()? onPressed;

  const IconButtonComponent({
    Key? key,
    this.size = 24,
    this.icon = Icons.add,
    this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      iconSize: size,
      onPressed: onPressed,
    );
  }
}
