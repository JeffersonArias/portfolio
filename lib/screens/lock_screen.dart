import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:portfolio/logic/date_time.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({Key? key}) : super(key: key);

  static const String route = '/lock_screen';

  @override
  State<LockScreen> createState() => _LockScreenState();

}

class _LockScreenState extends State<LockScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(86, 151, 176, 1.0),
      body: Center(
          child: Stack(
          fit: StackFit.expand,
          children: [
              Image.asset(
                'assets/wallpaper.jpg',
                fit: BoxFit.cover,
              ),
            Positioned(
                top: size.height * 0.08,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    const Icon(Icons.lock, color: Colors.white,),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '${DateTimeNow.days[DateTimeNow.day -1]}, ${DateTimeNow.months[DateTimeNow.month -1]} ${DateTimeNow.dayInMonth}',
                        style: const TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Text(
                      "${DateTimeNow.hour < 10 ? '0${DateTimeNow.hour}' : DateTimeNow.hour}:${DateTimeNow.minute < 10 ? '0${DateTimeNow.minute}' : DateTimeNow.minute}",
                      style: const TextStyle(
                        fontSize: 90,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const Positioned(bottom: 20, left: 0, right: 0, child: SlideButton())
        ],
      )),
    );
  }
}
