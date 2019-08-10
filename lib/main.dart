import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hidden_drawer/restaurant_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/wood_bk.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          elevation: 0,
          title: Text(
            "The Paleo Padlock",
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Bebas',
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            new RestaurantCard(
              heartCount: Random().nextInt(100),
              icon: Icons.fastfood,
              iconBackgroundColor: Colors.red,
              image: 'images/eggs_in_skillet.jpg',
              title: 'il domacca',
              subTitle: "78 5TH AVENUE, NEW YORK",
            ),
            new RestaurantCard(
              image: 'images/steak_on_cooktop.jpg',
              icon: Icons.local_dining,
              iconBackgroundColor: Colors.red,
              title: 'Mc Grady',
              subTitle: "79 5TH AVENUE, NEW YORK",
              heartCount: 84,
            ),
            new RestaurantCard(
                image: 'images/spoons_of_spices.jpg',
                icon: Icons.fastfood,
                iconBackgroundColor: Colors.purpleAccent,
                title: 'Sugar & Spice',
                subTitle: "80 5TH AVENUE, NEW YORK",
                heartCount: 84),
          ],
        ),
      ),
    );
  }
}
