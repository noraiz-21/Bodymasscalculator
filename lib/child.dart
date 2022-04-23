import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class child extends StatelessWidget {
  dynamic? newicon;
  dynamic? newtext;
  child({required this.newicon, required this.newtext});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        newicon,
        Text(
          newtext,
          style: TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
