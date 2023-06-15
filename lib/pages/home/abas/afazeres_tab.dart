import 'package:flutter/material.dart';
import 'package:school/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  final void Function(int tabIdx)? callback;

  const AfazeresTab({super.key, required this.valorInicial, this.callback});

  @override
  State<AfazeresTab> createState() => _AfazeresTab();
}

// O _ na frente do nome significa que a classe é privada
class _AfazeresTab extends State<AfazeresTab> {
  late int acumulador;

  void somarMaisum() {
    setState(() {
      acumulador++;
    });
  }

  void handleCallback() {
    if (widget.callback != null) {
      widget.callback!(1);
    }
  }

  @override
  void initState() {
    acumulador = widget.valorInicial;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(acumulador.toString()),
        const SpacerComponent(),
        ElevatedButton(
          onPressed: somarMaisum,
          child: const Text('+1'),
        ),
        const SpacerComponent(),
        ElevatedButton(
          onPressed: handleCallback,
          child: const Text('Callback'),
        ),
      ],
    );
  }
}
