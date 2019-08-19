import 'package:flutter/material.dart';

class MenuListItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  MenuListItem({this.title, this.isSelected = false,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // tODO:
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 50),
        child: Text(
          '$title',
          style: TextStyle(
              fontFamily: 'Bebas',
              fontSize: 25,
              letterSpacing: 2,
              color: isSelected ? Colors.red : Colors.white,
          ),
        ),
      ),
    );
  }
}
