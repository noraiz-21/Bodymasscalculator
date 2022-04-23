import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'child.dart';

class reusablewidget extends StatelessWidget {
  dynamic? Color;
  final newchild;
  dynamic? inHeight;
  dynamic? inwidth;
  reusablewidget(
      {required this.Color,
      required this.newchild,
      required this.inHeight,
      required this.inwidth});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color),
        height: inHeight,
        width: inwidth,
        child: newchild,
      ),
    );
  }
}
