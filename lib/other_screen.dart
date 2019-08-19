import 'package:flutter/material.dart';
import 'package:hidden_drawer/zoom_scaffold.dart';

final otherScreen = new Screen(
  screenBackground: DecorationImage(
    image: AssetImage('images/other_screen_bk.jpg'),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.black54, BlendMode.multiply),
  ),
  screenContentBuilder: (BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset('images/other_screen_card_photo.jpg'),
            ],
          ),
        ),
      ),
    );
  },
  screenTitle: "OTHER SCREEN",
);
