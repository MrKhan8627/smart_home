import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardchild, this.onPress});
  // ignore: empty_constructor_bodies

  final Widget cardchild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.white70,
        elevation: 3,
        child: SizedBox(
          height: 20,
          child: cardchild,
        ),
      ),
    );
  }
}
