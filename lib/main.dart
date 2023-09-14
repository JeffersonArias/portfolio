import 'package:flutter/material.dart';
import 'screens/screens.dart';


void main () {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My personal Portfolio',
      initialRoute: LockScreen.route,
      routes: {
        LockScreen.route: ( _ ) => const LockScreen(),
        HomeScreen.route: ( _ ) => HomeScreen(),
        AboutMe.route: ( _ ) => const AboutMe(),
        SkillsScreen.route: ( _ ) => SkillsScreen(),
        EducationScreen.route: ( _ ) => EducationScreen(),
      },
    );
  }
}
