import 'package:flutter/material.dart';
import 'package:smart_home/components/constants.dart';

class IconContents extends StatelessWidget {
  IconContents({this.icon, this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(height: 10.0),
        Text(lable, style: kLableTextStyle)
      ],
    );
  }
}
