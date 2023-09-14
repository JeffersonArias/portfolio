import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {

  final ImageProvider<Object> image;

  const AppIcon({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height*0.016, vertical: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              width: 65,
              height: 65,
              color: Colors.transparent,
              child: Image(
                fit: BoxFit.cover,
                image: image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}