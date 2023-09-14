import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:slide_to_act_reborn/slide_to_act_reborn.dart';


class SlideButton extends StatelessWidget {
  const SlideButton({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SlideAction(
        borderRadius: 13,
        elevation: 0,
        innerColor: const Color.fromARGB(255, 57, 67, 113),
        outerColor: const Color.fromRGBO(86, 151, 176, 1.0),
        text: 'SLIDE TO UNLOCK',
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20
        ),
        sliderButtonIcon: const Icon(
          Icons.lock,
          color: Colors.white,
        ),
        onSubmit: () {
          Navigator.pushReplacementNamed(context, HomeScreen.route);
        },
      ),
    );
  }
}