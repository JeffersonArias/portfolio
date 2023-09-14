import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      decoration: _BlueBackground(),
      child: AnimateGradient(primaryColors: const [
        Color.fromRGBO(99, 235, 229, 1.0),
        Color.fromRGBO(79, 136, 161, 1.0),
        Color.fromRGBO(55, 69, 113, 1.0),
      ], secondaryColors: const [
        Color.fromRGBO(84, 178, 190, 1.0),
        Color.fromRGBO(63, 87, 126, 0.9),
        Color.fromRGBO(42, 65, 105, 1.0),
      ], child: Container()),
    );
  }

  BoxDecoration _BlueBackground() => const BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromRGBO(45, 66, 122, 1.0),
        Color.fromRGBO(97, 135, 237, 1.0)
      ]));
}
