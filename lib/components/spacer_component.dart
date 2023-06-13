import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget {
//constantes
  final double size;
  final bool isFull;
  final bool isHorizontal;

//Construtor
  const SpacerComponent({
    Key? key,
    this.size = 16,
    this.isFull = false,
    this.isHorizontal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isFull ? const Spacer()
        : SizedBox(
            height: size,
            width: isHorizontal ? size : null,
          );
  }
}
