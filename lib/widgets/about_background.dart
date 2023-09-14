import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

class AboutBackground extends StatelessWidget {
  final Widget child;

  const AboutBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          BlueBox(),
          Header(),
          Align(alignment: const Alignment(0,0), child: Button(),),
          child
        ],
      ),
    );
  }
}





