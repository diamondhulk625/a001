import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'entered.dart';

class MonochoromeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MonochromeShopHome(),
    );
  }
}

class MonochromeShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 34,
            left: 16,
            right: 16,
            child: Container(
              height: 100,
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      "LOSER",
                      style: TextStyle(
                        fontSize: 64,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "V",
                      style: TextStyle(
                        fontSize: 86,
                        letterSpacing: -2,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 43,
            right: 16,
            child: GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => WomenBlazersPage(),);
                Navigator.push(context,route);
              },
              child: Container(
                  height: 96,
                  width: 96,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, border: Border.all()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 25,
                      ),
                    ],
                  )),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 12,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3.2,
              decoration: BoxDecoration(color: Colors.black),
              child: Image.asset(
                "assets/images/person-2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 12,
            bottom: MediaQuery.of(context).size.height / 3.5,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.6,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
              child: Image.asset(
                "assets/images/person-7.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 135,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.1,
              height: MediaQuery.of(context).size.height / 3.4,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Image.asset(
                "assets/images/person-1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2.0 + 22,
            top: 156,
            right: 0,
            child: Container(
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Men's",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Blazers",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Women's",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Balzers",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 + 26,
            right: 16,
            bottom: 140,
            child: Container(
              height: 80,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Kid's",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Blazers",
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
