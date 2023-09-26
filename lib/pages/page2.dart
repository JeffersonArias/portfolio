import 'package:flutter/material.dart';
import 'package:portfolio/services/weather.dart';
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
                const Column(
                  children: [
                    WeatherWidget(),
                    Text('Weather', style: TextStyle(color: Colors.white),)
                  ],
                ),
                Expanded(child: Container()),
                Column(
                  children: [
                    CardWidget(decoration: customRed,child: Column(
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



class WeatherWidget extends StatefulWidget {
  const WeatherWidget({Key? key}) : super(key: key);


  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {

  WeatherModel weather = WeatherModel();

  late int temperature;
  late String weatherIcon;
  late String city;
  late String main;
  late String description;
  late bool isLoading = true;

  @override
  void initState() {
    getData();

    super.initState();

  }

  void getData() async {

    var weatherData = await weather.getCity('cali');

    updateUI(weatherData);


  }

  void updateUI(dynamic weatherData){
    setState(() {
      if (weatherData == null){
        temperature = 0;
        weatherIcon = 'Error';
        description = 'Unable to get weather data';
        city = 'null';
        isLoading = false;
        return;
      }
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      int weatherNumber = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(weatherNumber);
      main = weatherData['weather'][0]['main'];
      description = weatherData['weather'][0]['description'];
      city = weatherData['name'];
      isLoading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CardWeatherLoading()
        : CardWeatherContent(city: city, temperature: temperature, weatherIcon: weatherIcon, main: main, description: description);
  }
}

class CardWeatherLoading extends StatelessWidget {
  const CardWeatherLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardWidget(decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
    end: Alignment.bottomCenter,
    begin: Alignment.topCenter,
    colors: [
    Color.fromRGBO(5, 57, 112, 1.0),
    Color.fromRGBO(66, 141, 215, 1.0)
    ]
    )
    ), child: const Center(child: CircularProgressIndicator(
      color: Colors.white,
    ),),);
  }
}


class CardWeatherContent extends StatelessWidget {

  const CardWeatherContent({
    super.key,
    required this.city,
    required this.temperature,
    required this.weatherIcon,
    required this.main,
    required this.description,
  });

  final String city;
  final int temperature;
  final String weatherIcon;
  final String main;
  final String description;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return CardWidget(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color.fromRGBO(5, 57, 112, 1.0),
              Color.fromRGBO(66, 141, 215, 1.0)
            ]
        )
    ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(city, style: TextStyle(color: Colors.white, fontSize: size.width *0.045, fontWeight: FontWeight.w400),),
          Text('$temperature°', style: TextStyle( color: Colors.white, fontSize: size.width *0.1, fontWeight: FontWeight.w200),),
          const SizedBox(height: 6,),
          Text(weatherIcon),
          const SizedBox(height: 5,),
          Text('$main - $description', style: TextStyle(color: Colors.white, fontSize: size.width *0.034, fontWeight: FontWeight.w300), maxLines: 2, overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}







