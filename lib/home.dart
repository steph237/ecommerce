import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'circle.dart';
import 'know_more.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ), //IconButton
          ],
          backgroundColor: Colors.black,
          elevation: 50.0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/white.jpg"),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg2.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ListView(
                    shrinkWrap: true,
                    children: [
                     CarouselDemo()
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    //apply padding to all four sides
                    child: Text(
                      "Head-\nphones",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'JBL T460BT',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 2),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Extra Bass Wireless',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              const SizedBox(
                height: 15,
              ),
              Builder(builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const KnowMore()),
                    );

                    debugPrint('pressed');
                    // Add your on pressed event here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: const EdgeInsets.only(left: 60, right: 60),
                  ),
                  child: const Text('Get it now'),
                );
              }),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 40),
                  IconButton(
                      icon: const Icon( Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: (){}

                  ),


                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your on pressed event here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                    ),
                    child: const Text('01 of 05'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      icon: const Icon( Icons.arrow_forward_ios),
                      color: Colors.white,
                      onPressed: (){}

                  ),

                  const SizedBox(
                    width: 50,
                  ),

                  ]
              ),
                ],
              )

          ),
        ),
      );

  }
}

class CarouselDemo extends StatelessWidget{
  CarouselController buttonCarouselController = CarouselController();

  CarouselDemo({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        CarouselSlider(

          carouselController: buttonCarouselController,
          items: [
            Container(

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/headset.png'),
                ),
              ),
              margin: const EdgeInsets.all(30),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/headset2.png'),
                ),
              ),
              margin: const EdgeInsets.all(30),
            ),
            Container(

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/headset7.png'),
                ),
              ),
              margin: const EdgeInsets.all(30),
            ),
          ],
          options: CarouselOptions(
            height: 400.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration:
            Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
     
      ]
  );
}
