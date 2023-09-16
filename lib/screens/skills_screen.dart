import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';


class SkillsScreen extends StatelessWidget {

  static const String route = '/skills';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Background(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Center(child:Text('Skills', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),) ,),
            ),
            _Divider(),
            SizedBox(height: 30,),
            HardSkills(),
            SizedBox(height: 30,),
            _Divider(),
            SizedBox(height: 30,),
            Languages(),
            SizedBox(height: 30,),
            _Divider(),
            SizedBox(height: 30,),
            SoftSkills(),
            SizedBox(height: 30,),
            _Divider(),
            SizedBox(height: 500,)
          ],
        ),
      ));
  }
}

class SoftSkills extends StatelessWidget {
  const SoftSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Bubble(child: Text('Positive attitude', style: TextStyle(color: Colors.white, fontSize: 16),)),
            _Bubble(child: Text('Good team player', style: TextStyle(color: Colors.white, fontSize: 16),))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Bubble(child: Text('Attentive to details', style: TextStyle(color: Colors.white, fontSize: 16),)),
            _Bubble(child: Text('Critical thinking', style: TextStyle(color: Colors.white, fontSize: 16),))
          ],
        ),
      ],
    );
  }
}

class Languages extends StatelessWidget {
const Languages({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Bubble(child: Row( 
            children: [
              Text('🇺🇸 English intermediate', style: TextStyle(color: Colors.white, fontSize: 16),),
            ],
          )),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _BubbleWhite(child: Row(
            children: [
              Text('🇪🇸 Spanish Native', style: TextStyle(color: Colors.red, fontSize: 16),)
            ],
          )),
        ],
      )
    ],
  );
}
}

class HardSkills extends StatelessWidget {
  const HardSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _BubbleWhite(
              child: Row(
              children: [
                Image.asset('lib/icons/html-5.png', height: 20,),
                const Text(' HTML', style: TextStyle(color: Colors.deepOrange, fontSize: 16),),
              ],
            ),),
            _BubbleWhite(
                child: Row(
              children: [
                Image.asset('lib/icons/css-3.png', height: 20,),
                const Text(' CSS', style: TextStyle(color: Colors.blue, fontSize: 16),),
              ],
            )),
            const _Bubble(
                child: Row(
              children: [
                Text('Python', style: TextStyle(color: Colors.white, fontSize: 16),),
              ],
            )),
            const _Bubble(
                child: Row(
              children: [
                Text('Js', style: TextStyle(color: Colors.white, fontSize: 16),),
              ],
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _Bubble(
                child: Row(
                  children: [
                    Text('JSON', style: TextStyle(color: Colors.white, fontSize: 16),),
                  ],
                )),
            _BubbleWhite(
                child: Row(
              children: [
                Image.asset('lib/icons/dart.png', height: 20,),
                const Text(' Dart', style: TextStyle(color: Colors.blueAccent),),
              ],
            )),
            _BubbleWhite(
                child: Row(
              children: [
                Image.asset('lib/icons/flutter.png', height: 20,),
                const Text(' Flutter', style: TextStyle(color: Colors.blueAccent),),
              ],
            )),
            const _Bubble(
                child: Row(
              children: [
                Text('GIT', style: TextStyle(color: Colors.white),),
              ],
            )),
          ],
        ),
      ],
    );
  }
}

class _Bubble extends StatelessWidget {

  final Widget child;


  const _Bubble({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.white,
            width: 1,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}

class _BubbleWhite extends StatelessWidget {

  final Widget child;


  const _BubbleWhite({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.white,
      height: 25,
      thickness: 1,
      indent: 25,
      endIndent: 25,
    );
  }
}

class _Background extends StatelessWidget {

  final Widget child;

  const _Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(44, 50, 71, 1),
                Color.fromRGBO(42, 119, 142, 1),
              ]
            )
          ),
          child: child,
    );
  }
}


