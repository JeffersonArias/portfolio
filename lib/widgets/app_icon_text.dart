import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {

  final ImageProvider<Object> image;
  final String text;

  const AppIconText({
    super.key, required this.image, required this.text,
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
              width: size.width*0.164,
              height: size.width*0.164,
              color: Colors.transparent,
              child: Image(
                fit: BoxFit.cover,
                image: image,
              ),
            ),
          ),
        ),
        Text(text,
          style: const TextStyle(
              color: Colors.white
          ),)
      ],
    );
  }
}
