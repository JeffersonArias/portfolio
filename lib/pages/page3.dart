import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatelessWidget {

  final Uri _url_discord = Uri.parse('https://discord.gg/UvKYpY5Sh5');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/wallpaper2.jpg'), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black26,  BlendMode.darken))),
                    ),
                ),
                Center(
                  heightFactor: 200,
                  widthFactor: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        color: Colors.grey[300],
                        height: 200,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset('assets/discord.jpg', height: 80,)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Yeton.', style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold),),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    style: const ButtonStyle(
                                      overlayColor: MaterialStatePropertyAll(Color.fromRGBO(
                                          87, 100, 241, 1)),
                                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                                          87, 100, 241, 0.6705882352941176)),
                                      elevation: MaterialStatePropertyAll(0),
                                    ),
                                    onPressed: () async {
                                      if (!await launchUrl(_url_discord, mode: LaunchMode.inAppWebView)) {
                                        throw Exception('Could not launch $_url_discord');
                                      }
                                    }, child: const Text(
                                  'Join server', style: TextStyle(color: Colors.white),
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

      ),
    );
  }
}
