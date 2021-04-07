import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home/components/camera_card.dart';
import 'package:smart_home/components/constants.dart';
import 'package:smart_home/components/custom_appBar.dart';
import 'package:smart_home/components/icon_Contents.dart';
import 'package:smart_home/components/resuable_card.dart';
import 'package:smart_home/screens/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: CustomAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Category', style: kTitleTextStyle),
                ),
                Expanded(
                  flex: 3,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [
                      Expanded(
                          child: ReusableCard(
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LightPage()));
                        },
                        cardchild: IconContents(
                          icon: FontAwesomeIcons.lightbulb,
                          lable: 'Lamp',
                        ),
                      )),
                      Expanded(
                          child: ReusableCard(
                        cardchild: IconContents(
                          icon: FontAwesomeIcons.doorClosed,
                          lable: 'Door',
                        ),
                      )),
                      Expanded(
                          child: ReusableCard(
                        cardchild: IconContents(
                            icon: FontAwesomeIcons.solidLightbulb,
                            lable: 'Plant'),
                      )),
                      Expanded(
                          child: ReusableCard(
                        cardchild: IconContents(
                            icon: FontAwesomeIcons.car, lable: 'Car'),
                      )),
                      Expanded(
                          child: ReusableCard(
                        cardchild: IconContents(
                            icon: FontAwesomeIcons.tv, lable: 'TV'),
                      )),
                      Expanded(
                          child: ReusableCard(
                        cardchild: IconContents(
                            icon: FontAwesomeIcons.fan, lable: 'Fan'),
                      )),
                    ],
                  ),
                )
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Camera', style: kTitleTextStyle),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Expanded(child: CameraCard()),
                      Expanded(child: CameraCard()),
                      Expanded(child: CameraCard()),
                      Expanded(child: CameraCard()),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.dashboard),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        )),
      ),
    );
  }
}
