import 'package:flutter/material.dart';
import 'package:hidden_drawer/other_screen.dart';
import 'package:hidden_drawer/restaurant_screen.dart';

import 'menu/menu_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IOS Menu',
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
  var activeScreen = restaurantScreen;

  Widget createMenuItems() => Transform(
    transform: Matrix4.translationValues(0, 225, 0),
    child: Column(
      children: <Widget>[
        MenuListItem(
          title: "THE PADDOCK",
          isSelected: true,
        ),
        MenuListItem(
          title: "THE HERO",

        ),
        MenuListItem(
          title: "HELP US GROW",
        ),
        MenuListItem(
          title: "SETTINGS",
        ),
      ],
    ),
  );
  Widget createMenuTitle() => Transform(
        transform: Matrix4.translationValues(
          -100,
          0,
          0,
        ),
        child: OverflowBox(
          maxWidth: double.infinity,
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Menu",
              style: TextStyle(
                fontSize: 240,
                color: Colors.grey[800],
                fontFamily: 'Mermaid',
              ),
              softWrap: false,
              textAlign: TextAlign.left,
            ),
          ),
        ),
      );
  Widget createContentDisplay() => Container(
        decoration: BoxDecoration(
          image: activeScreen.screenBackground,
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
              "${activeScreen.screenTitle}",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Bebas',
              ),
            ),
          ),
          body: activeScreen.screenContentBuilder(context),
        ),
      );

  Widget createMenuScreen() => Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/dark_grunge_bk.jpg'),
              fit: BoxFit.cover),
        ),
    child: Material(
      color: Colors.transparent,
      child: Stack(
            children: <Widget>[
              createMenuTitle(),
              createMenuItems(),
            ],
          ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        createMenuScreen(),
        // createContentDisplay(),
      ],
    );
  }
}
