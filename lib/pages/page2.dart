import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

class Page2 extends StatelessWidget {

  final customBlue = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
          colors: [
            Color.fromRGBO(5, 57, 112, 1.0),
            Color.fromRGBO(66, 141, 215, 1.0)
          ]
      )
  );

  final customRed = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
          colors: [
            Color.fromRGBO(245, 90, 111, 1.0),
            Color.fromRGBO(251, 38, 61, 1.0)
          ]
      )
  );

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
            child: Row(
              children: [
                Column(
                  children: [
                    _Card(decoration: customBlue,
                      child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cali', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
                        Text('32°', style: TextStyle( color: Colors.white, fontSize: 40, fontWeight: FontWeight.w200),),
                        SizedBox(height: 15,),
                        Text('☀'),
                        SizedBox(height: 5,),
                        Text('Sunny', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),)
                      ],
                    ),),
                    const Text('Weather', style: TextStyle(color: Colors.white),)
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    _Card(decoration: customRed,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(bottom: 5),
                                  child: ClipRRect(
                                    borderRadius:BorderRadius.circular(10),
                                      child: Image.asset('lib/icons/kevin_kaarl.jpg', height: 80,))),
                            const Icon(Icons.music_note, color: Colors.white,)
                          ],
                        ),
                        const Text('Vámonos a marte', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14.5,),),
                        Text('Kevin Kaarl', style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w400, fontSize: 12),)
                      ],
                    )),
                    const Text('Music', style: TextStyle(color: Colors.white),)
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}


class _Card extends StatelessWidget {

  final Widget child;
  final BoxDecoration decoration;

  const _Card({super.key, required this.child, required this.decoration});


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: size.width * 0.41,
        height: size.width *0.41,
        decoration: decoration,
        child: child,
      ),
    );
  }
}





