import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GlassBox(
            height: double.infinity,
            width: double.infinity,
            colors: [
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0.1)
            ],
            child: const Column(
                children: [
            Row(
            children: [
            AppIconText(image: AssetImage('assets/xd.jpg'), text: 'About me'),
            AppIconText(image: AssetImage('assets/linkedin.jpg'), text: 'LinkedIn'),
            AppIconText(image: AssetImage('assets/skills.jpg'), text: 'Skills'),
            AppIconText(image: AssetImage('assets/github.jpg'), text: 'GitHub'),
            ],
            ),
                ]),
          ),
        ),
      ),
    );
  }
}
