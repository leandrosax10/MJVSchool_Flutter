import 'package:flutter/material.dart';
import 'package:shcool/components/app_bar_component.dart';


class BodyComponent extends StatelessWidget {
final Widget child;
final EdgeInsets? padding;
final EdgeInsets? margin;
final BottomNavigationBar? bar;
final FloatingActionButton? actionButton;

const BodyComponent({
  super.key,
  required this.child,
  this.padding,
  this.margin,
  this.bar,
  this.actionButton,
  
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter,
        margin: margin?? const EdgeInsets.only(top: 8),//?? compara se é nulo
        padding: padding?? const EdgeInsets.all(18),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
        child: SingleChildScrollView(child: child),
      ),
      bottomNavigationBar: bar,
      floatingActionButton: actionButton,
    );
  }
}
