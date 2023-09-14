import 'package:flutter/material.dart';
import 'package:portfolio/screens/screens.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatelessWidget {

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
                _FirstRow(),
                const SizedBox(height: 20,),
                const _SecondRow(),
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

class _SecondRow extends StatelessWidget {
  const _SecondRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppIconText(image: AssetImage('assets/dribbble.jpg'), text: 'Dribbble'),
        AppIconText(image: AssetImage('assets/cv.jpg'), text: 'Download CV'),
        AppIconText(image: AssetImage('assets/mail.jpg'), text: 'Mail'),
        AppIconText(image: AssetImage('assets/discord.jpg'), text: 'Discord'),
      ],
    );
  }
}

class _FirstRow extends StatelessWidget {

  final Uri _url_linkedin = Uri.parse('https://www.linkedin.com/in/jefferson-arias-42212b144');
  final Uri _url_github = Uri.parse('https://github.com/JeffersonArias');

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //About me app
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AboutMe.route);
            },
            child: const AppIconText(image: AssetImage('assets/about_me.jpg'), text: 'About me')),

        //Linkedin app
        GestureDetector(
            onTap: () async {
              if (!await launchUrl(_url_linkedin, mode: LaunchMode.inAppWebView)) {
                throw Exception('Could not launch $_url_linkedin');
              }
            },
            child: const AppIconText(image: AssetImage('assets/linkedin.jpg'), text: 'LinkedIn')),

        //Skills app
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SkillsScreen.route);
          },
            child: const AppIconText(image: AssetImage('assets/skills.jpg'), text: 'Skills')),

        //GitHub app
        GestureDetector(
            onTap: () async {
              if (!await launchUrl(_url_github, mode: LaunchMode.inAppWebView)) {
                throw Exception('Could not launch $_url_github');
              }
            },
            child: const AppIconText(image: AssetImage('assets/github.jpg'), text: 'GitHub')),
      ],
    );
  }
}

