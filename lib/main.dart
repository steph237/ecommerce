import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ],
          backgroundColor: Colors.black,
          elevation: 50.0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              shape: new CircleBorder(),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover),
          ),

          child: Column(
            children: <Widget>[
              Container(
                height: 400.0,
                width: 400.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/headset.png'),

                    ),

                ),
              ),
              const Text('JBL T460BT',
              style: TextStyle( fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold, height: 2),
              ),
              const Text('Extra Bass Wireless',
                style: TextStyle(  color: Colors.white, fontWeight: FontWeight.bold, height: 1),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your on pressed event here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),

                  ),
                  padding: const EdgeInsets.only(left: 60, right:60),
                ),

                child: const Text('Get it now'),
              ),
            ],


          ),
        ),
      ),
    );
  }
}
