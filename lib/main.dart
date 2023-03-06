import 'package:flutter/material.dart';
import 'circle.dart';

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
                  Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/headset.png'),
                      ),
                    ),
                    margin: const EdgeInsets.all(30),
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
              const Text(
                'Extra Bass Wireless',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1),
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
                  SizedBox(width: 40),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    // size: 24.0,
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
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    // size: 24.0,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KnowMore extends StatelessWidget {
  const KnowMore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            // IconButton(
            //   icon: const Icon(Icons.arrow_back),
            //   onPressed: () {},
            // ), //IconButton
          ],
          backgroundColor: Colors.black,
          elevation: 50.0,

        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg2.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/headset.png',
                height: 300,
                width: 435,
                fit: BoxFit.fitHeight,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(

                  child: Text(
                    "Solo Pro",
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 251, 251),
                      fontSize: 16, fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "JBL T460BT Extra Boss Wireless",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                  color: Color.fromARGB(255, 250, 249, 249),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  //Draw a circle with size 20
                  Circle(
                    colour: Color.fromARGB(255, 252, 251, 251),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Circle(
                    colour: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Circle(
                    colour: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Circle(
                    colour: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              Align(

                alignment: Alignment.centerLeft,
                child: Text("• JBL Pure Bass Sound", style: TextStyle(
                  color: Color.fromARGB(255, 252, 251, 251),
                  fontSize: 16, fontWeight: FontWeight.w100,
                ),),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("• Quick charging with 5min providing 2 hours",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 251, 251),
                    fontSize: 16, fontWeight: FontWeight.w100,
                  ),),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("• Playtime Wireless Bluetooth Streaming",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 251, 251),
                    fontSize: 16, fontWeight: FontWeight.w100,
                  ),),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("• Multipoint Connection to all type of devices",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 251, 251),
                    fontSize: 16, fontWeight: FontWeight.w100,
                  ),),
              ),
              SizedBox(
                height: 35,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Price", style: TextStyle(
                  color: Color.fromARGB(255, 252, 251, 251),
                  fontSize: 16, fontWeight: FontWeight.normal,
                ),),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("\$412.09", style: TextStyle(
                      color: Color.fromARGB(255, 252, 251, 251),
                      fontSize: 25, fontWeight: FontWeight.bold,
                    ),),
                  ),


                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      //Create a container with a Topleft border radius of 20
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Colors.red,
                        ),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_basket_rounded,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Add to cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }

}
