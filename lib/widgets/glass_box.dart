import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final double height;
  final Widget child;
  final double width;
  final List<Color> colors;


  GlassBox({required this.height, required this.child, required this.width, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              // blur effect
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(),
              ),
              // gradient effect
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: colors)),
              ),
              // child
              child,
            ],
          ),
        ),
      ),
    );
  }
}
