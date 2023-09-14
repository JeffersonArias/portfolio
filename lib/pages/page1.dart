import 'package:flutter/material.dart';
import 'package:portfolio/screens/screens.dart';
import 'package:portfolio/widgets/widgets.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AboutMe.route);
                        },
                        child: const AppIconText(image: AssetImage('assets/about_me.jpg'), text: 'About me')),
                    const AppIconText(image: AssetImage('assets/linkedin.jpg'), text: 'LinkedIn'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SkillsScreen.route);
                      },
                        child: const AppIconText(image: AssetImage('assets/skills.jpg'), text: 'Skills')),
                    const AppIconText(image: AssetImage('assets/github.jpg'), text: 'GitHub'),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    AppIconText(image: AssetImage('assets/dribbble.jpg'), text: 'Dribbble'),
                    AppIconText(image: AssetImage('assets/cv.jpg'), text: 'Download CV'),
                    AppIconText(image: AssetImage('assets/mail.jpg'), text: 'Mail'),
                    AppIconText(image: AssetImage('assets/discord.jpg'), text: 'Discord'),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const AppIconText(image: AssetImage('assets/twitter.jpg'), text: 'Twitter'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, EducationScreen.route);
                      },
                        child: const AppIconText(image: AssetImage('assets/education.jpg'), text: 'Education')),
                    const AppIconText(image: AssetImage('assets/www.jpg'), text: 'Web')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

