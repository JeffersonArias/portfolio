import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

class AboutMe extends StatelessWidget {

  static const String route = '/about_me';

  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: AboutBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height*0.58),
              CardContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('I am a dedicated mobile developer with a strong passion for crafting high-quality software. My primary focus is on Flutter',
                        style: _paragraphStyle()),

                    const SizedBox(height: 30),

                    Text('🤝 Teamwork is Part of My DNA', style: _tittleStyle(),),
                    const SizedBox(height: 15),
                    Text('My background as a former pro player has ingrained in me the value of teamwork. I understand the importance of collaboration, effective communication, and working seamlessly with others to achieve common goals.',
                      style: _paragraphStyle(),
                    ),
                    const SizedBox(height: 30),
                    Text('📚 A Passion for Learning', style: _tittleStyle()),
                    const SizedBox(height: 15),
                    Text('I have an insatiable thirst for knowledge. I\'m driven by the desire to learn something new every day, constantly seeking opportunities for growth and improvement.',
                      style: _paragraphStyle(),
                    ),
                    const SizedBox(height: 30),
                    Text('🌊 Adaptability and Resilience', style: _tittleStyle()),
                    const SizedBox(height: 15),
                    Text('Adaptability is one of my strengths. I can easily pivot, embrace new challenges, and relearn as needed, making me well-equipped to stay ahead in the ever-evolving world of technology.',
                      style: _paragraphStyle(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  TextStyle _paragraphStyle() => TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w300,
  );

  TextStyle _tittleStyle() => TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(45, 66, 122, 1.0),
  );

}

