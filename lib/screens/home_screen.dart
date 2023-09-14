import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/screens/screens.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home_screen';


  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/wallpaper2.jpg'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.73,
                child: PageView(
                  controller: _controller,
                  children: [Page1(), const Page2()],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: const SwapEffect(
                  activeDotColor: Colors.white,
                  dotColor: Color.fromRGBO(231, 106, 189, 1.0),
                  dotHeight: 10,
                  dotWidth: 10
                ),
              ),
              const SizedBox(height: 30,),
              GlassBox(
                height: 100,
                width: double.infinity,
                colors: [
                  Colors.white.withOpacity(0.3),
                  Colors.white.withOpacity(0.1)
                ],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      const AppIcon(image: AssetImage('assets/call.jpg')),
                      const AppIcon(image: AssetImage('assets/camera.jpg')),
                      const AppIcon(image: AssetImage('assets/gallery.jpg')),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, LockScreen.route);
                        },
                          child: const AppIcon(image: AssetImage('assets/lock.jpg')),
                      )
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ));
    }
  }
