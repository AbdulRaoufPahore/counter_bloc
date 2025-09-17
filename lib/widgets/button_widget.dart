import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget buttonWidget({String? title, Color? bgColor, VoidCallback? onPress}) {
  return title!.text.white.bold.uppercase
      .letterSpacing(2)
      .makeCentered()
      .box
      .width(200)
      .height(50)
      .color(bgColor!)
      .make()
      .onTap(onPress);
}
