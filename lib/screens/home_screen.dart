import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/screens/screens.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

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
              _Body(size: size, controller: _controller),
              const SizedBox(height: 20,),
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
              const SizedBox(height: 15,),
              _GlassBox()
            ],
          ),
        ),
      ));
    }
  }

class _GlassBox extends StatelessWidget {

  final String _phoneNumber = '+573175424168';


  @override
  Widget build(BuildContext context) {
    return GlassBox(
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
            GestureDetector(
                onTap: () async {
                  final url = Uri(scheme: 'tel', path: _phoneNumber,);
                  if( await canLaunchUrl(url)) {
                    launchUrl(url);
                  }
                },
                child: const AppIcon(image: AssetImage('assets/call.jpg'))),
            GestureDetector(
                onTap: () async {
                  WidgetsFlutterBinding.ensureInitialized();

                  final cameras = await availableCameras();

                  final firstCamera = cameras.first;

                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CameraApp(camera: firstCamera),
                      )
                  );
                },
                child: const AppIcon(image: AssetImage('assets/camera.jpg'))),
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

    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.size,
    required PageController controller,
  }) : _controller = controller;

  final Size size;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.73,
      child: PageView(
        controller: _controller,
        children: [Page1(), Page2()],
      ),
    );
  } 
}
