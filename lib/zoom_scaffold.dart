import 'package:flutter/material.dart';

class Screen {
  String screenTitle;
  DecorationImage screenBackground;
  WidgetBuilder screenContentBuilder;

  Screen({
    @required this.screenTitle,
    @required this.screenBackground,
    @required this.screenContentBuilder,
  });
}
