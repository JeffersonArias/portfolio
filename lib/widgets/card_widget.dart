import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final Widget child;
  final BoxDecoration decoration;

  const CardWidget({super.key, required this.child, required this.decoration});


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: size.width * 0.41,
        height: size.width *0.41,
        decoration: decoration,
        child: child,
      ),
    );
  }
}
