import "package:flutter/material.dart";
import 'circle.dart';


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
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),

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

                  child: const Text(
                    "Solo Pro",
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 251, 251),
                      fontSize: 16, fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              const Text(
                "JBL T460BT Extra Boss Wireless",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                  color: Color.fromARGB(255, 250, 249, 249),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
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
              const SizedBox(
                height: 15,
              ),

              const Align(

                alignment: Alignment.centerLeft,
                child: Text("• JBL Pure Bass Sound", style: TextStyle(
                  color: Color.fromARGB(255, 252, 251, 251),
                  fontSize: 16, fontWeight: FontWeight.w100,
                ),),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("• Quick charging with 5min providing 2 hours",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 251, 251),
                    fontSize: 16, fontWeight: FontWeight.w100,
                  ),),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("• Playtime Wireless Bluetooth Streaming",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 251, 251),
                    fontSize: 16, fontWeight: FontWeight.w100,
                  ),),
              ),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text("• Multipoint Connection to all type of devices",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 251, 251),
                    fontSize: 16, fontWeight: FontWeight.w100,
                  ),),
              ),
              const SizedBox(
                height: 35,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Price", style: TextStyle(
                  color: Color.fromARGB(255, 252, 251, 251),
                  fontSize: 16, fontWeight: FontWeight.normal,
                ),),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
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
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Colors.red,
                        ),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_basket_rounded,
                            color: Colors.white,
                          ),
                          label: const Text(
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