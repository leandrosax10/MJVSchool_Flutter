import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const AppBarComponent({
    Key? key,
    this.titulo = 'Shcool',
  }) : super(key: key);

  static Size get size => const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('School'));
  }
}
