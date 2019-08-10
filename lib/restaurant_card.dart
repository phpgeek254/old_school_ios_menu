import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final int heartCount;
  final String title;
  final String image;
  final IconData icon;
  final Color iconBackgroundColor;
  final String subTitle;

  const RestaurantCard({
    @required this.title,
    @required this.image,
    @required this.icon,
    @required this.iconBackgroundColor,
    @required this.subTitle,
    @required this.heartCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4, right: 4, bottom: 10),
      child: Card(
        elevation: 10,
        child: Column(
          children: <Widget>[
            Image.asset(
              '$image',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '$title',
                        style: TextStyle(fontFamily: 'Mermaid', fontSize: 25),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '$subTitle',
                        style: TextStyle(
                            fontFamily: 'Mermaid',
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.white,
                      const Color(0xFFAAAAAA),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 70,
                  width: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                      Text('$heartCount')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
