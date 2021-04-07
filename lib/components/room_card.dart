import 'package:flutter/material.dart';
import 'package:smart_home/components/constants.dart';

class RoomsCard extends StatelessWidget {
  RoomsCard(
      {@required this.onPress,
      @required this.pic,
      @required this.roomCardTitle});

  final Function onPress;
  final Widget pic;
  final String roomCardTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Card(
            margin: EdgeInsets.all(10),
            elevation: 3,
            child: Container(
              child: Column(
                children: [
                  Container(height: 100, child: pic),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      roomCardTitle,
                      style: kRoomCardTextStyle,
                    ),
                  ),
                ],
              ),
            )));
  }
}
