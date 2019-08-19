import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hidden_drawer/restaurant_card.dart';
import 'package:hidden_drawer/zoom_scaffold.dart';

final restaurantScreen = new Screen(
  screenTitle: "The Paleo Padlock",
  screenBackground: DecorationImage(
    image: AssetImage('images/wood_bk.jpg'),
    fit: BoxFit.cover,
  ),
  screenContentBuilder: (BuildContext context) => ListView(
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
);
