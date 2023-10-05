import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {

  static const String route = '/education';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(child:Text('Education', style: TextStyle(color: Colors.green[700], fontSize: 25, fontWeight: FontWeight.bold),) ,),
          ),
          const Divider(
            color: Colors.green,
            height: 25,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          const _Container(title: 'Responsive Web Design', institution: 'Free Code Camp', function: 'Developer Certification', date: 'Oct 2023', city: 'Remote'),
          const _Container(title: 'Bachiller Tecnico Industrial', institution: 'Jose Maria Carbonell', function: 'Technical in Systems', date: 'Sep 2016', city: 'Cali', ),
          const _Container(title: 'Tecnico en sistemas', institution: 'Servicio Nacional De Aprendizaje', function: 'Technical in Systems', date: 'Sep 2016', city: 'Cali'),
          const _Container(title: 'English dot works', institution: 'Servicio Nacional De Aprendizaje', function: 'English', date: 'Sep 2014', city: 'Cali')
        ],
      ),
    );
  }
}

class _Container extends StatelessWidget {

  final String title;
  final String institution;
  final String function;
  final String date;
  final String city;

  const _Container({super.key, required this.title, required this.institution, required this.function, required this.date, required this.city});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[800],
        ),
        height: 250,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only( top: 25, bottom: 10),
              child: Center(child: Image.asset('lib/icons/education.png', height: 35,)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,),
              child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              child: Text(institution, style: const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: Text( function, style: const TextStyle(color: Colors.white, fontSize: 17)),
            ),
            Expanded(child: Container()),
            Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: double.infinity,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(date, style: const TextStyle(color: Colors.white),),
                    Text(city, style: const TextStyle(color: Colors.white))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
