// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _abas = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Perfil'),
      const BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits), label: 'Produto'),
    ];

    final List<Widget> _conteudos = [
    const Text('home'),
    const Text('Perfil'),
    const Text('Produto'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My App')),
      body: _conteudos.elementAt(0),//elemento que está no indice 0 (home)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: _abas,
      ),
    );
  }
}
