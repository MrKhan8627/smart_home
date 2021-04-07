import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_home/components/constants.dart';
import 'package:smart_home/components/room_card.dart';

enum ButtonState {
  buttonOn,
  buttonOff,
}

class LightPage extends StatefulWidget {
  @override
  _LightPageState createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  ButtonState buttonState = ButtonState.buttonOff;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: Text(
            'Living Room Lamps',
            style: TextStyle(color: Colors.black87),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 250,
                width: 200,
                child: Image.asset("assets/images/lightOff.png"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white38),
              height: 50,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        buttonState = ButtonState.buttonOff;
                      });
                    },
                    backgroundColor: buttonState == ButtonState.buttonOff
                        ? kActiveButtonColor
                        : kInactiveButtonColor,
                    child: Center(
                      child: Text('OFF'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        buttonState = ButtonState.buttonOn;
                      });
                    },
                    backgroundColor: buttonState == ButtonState.buttonOn
                        ? kActiveButtonColor
                        : kInactiveButtonColor,
                    child: Center(
                      child: Text('ON'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Any Rooms?', style: kTitleTextStyle),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          RoomsCard(
                              onPress: () {},
                              pic: Image.asset('assets/images/Office.jpg'),
                              roomCardTitle: 'Office'),
                          RoomsCard(
                              onPress: () {},
                              pic: Image.asset('assets/images/Lab.jpg'),
                              roomCardTitle: 'Office Lab'),
                          RoomsCard(
                            onPress: () {},
                            roomCardTitle: 'LivingRoom',
                            pic: Image.asset('assets/images/LivingRoom.jpg'),
                          ),
                          RoomsCard(
                              onPress: () {},
                              pic: Image.asset('assets/images/Bedroom1.jpg'),
                              roomCardTitle: 'Bedroom1'),
                          RoomsCard(
                            onPress: () {},
                            roomCardTitle: 'Bedroom2',
                            pic: Image.asset('assets/images/Bedroom2.jpg'),
                          ),
                        ],
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
