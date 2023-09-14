import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('lib/icons/yeton.jpg'),
              backgroundColor: Colors.black,
              radius: 144/2,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text('Hey there, I\'m',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(
            height: 11,
          ),
          const Text(
            'Jefferson Arias',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 39, color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'FRONT END DEVELOPER',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 70,
          ),
        ]));
  }
}