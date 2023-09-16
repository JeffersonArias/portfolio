
import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
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
                _SecondRow(),
                const SizedBox(height: 20,),
                ThirdRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThirdRow extends StatelessWidget {

  final Uri _url_twitter = Uri.parse('https://twitter.com/yeton47');

  final Uri _url_web = Uri.parse('https://github.com/JeffersonArias');

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Twitter app
        GestureDetector(
                onTap: () async {
              if (!await launchUrl(_url_twitter, mode: LaunchMode.inAppWebView)) {
            throw Exception('Could not launch $_url_twitter');
            }
            },
            child: const AppIconText(image: AssetImage('assets/twitter.jpg'), text: 'Twitter')),

        //Education app
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, EducationScreen.route);
          },
            child: const AppIconText(image: AssetImage('assets/education.jpg'), text: 'Education')),

        //Web app
        GestureDetector(
            onTap: () async {
            if (!await launchUrl(_url_web, mode: LaunchMode.inAppWebView)) {
            throw Exception('Could not launch $_url_web');
            }
            },
            child: const AppIconText(image: AssetImage('assets/www.jpg'), text: 'Web'))
      ],
    );
  }
}

class _SecondRow extends StatelessWidget {

  final Uri _url_dribbble = Uri.parse('https://www.google.com'); //TODO: Implements a real link

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Dribbble app
        GestureDetector(
            onTap: () async {
              if (!await launchUrl(_url_dribbble, mode: LaunchMode.inAppWebView)) {
              throw Exception('Could not launch $_url_dribbble');
              }
              },
            child: const AppIconText(image: AssetImage('assets/dribbble.jpg'), text: 'Dribbble')),

        // Download Cv app
        const AppIconText(image: AssetImage('assets/cv.jpg'), text: 'Download CV'),

        // Mail
        GestureDetector(
            onTap: () {
              _showConfirmationDialog(context);
            },
            child: const AppIconText(image: AssetImage('assets/mail.jpg'), text: 'Mail')),

        //Discord app
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Page3(),
                )
              );
            },
            child: const AppIconText(image: AssetImage('assets/discord.jpg'), text: 'Discord')),
      ],
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Send Email'),
          content: const Text('Email to yeton@jesuslife12.com'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Send'),
              onPressed: () {
                _sendEmail();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'yeton@jesuslife12.com',
      queryParameters: {
        'subject': 'Subject',
        'body': 'Write here your message',
      },
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      print('ERROR: CAN NOT OPEN EMAIL');
    }
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

