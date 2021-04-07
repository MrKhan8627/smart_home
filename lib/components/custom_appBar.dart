import 'package:flutter/material.dart';
import 'package:smart_home/components/constants.dart';
import 'package:smart_home/components/custom_cliper_appbar.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Text('Smart Home'),
      actions: [IconButton(icon: Icon(Icons.notifications), onPressed: () {})],
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: ClipPath(
        clipper: CustomClipperForAppBar(),
        child: Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Welcome Home Mr Khan!',
                  style: kAppbarTextStyle,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          color: Colors.black26,
                          offset: Offset(0, 2))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Feature',
                      suffixIcon: Padding(
                        padding: EdgeInsetsDirectional.only(end: 12.0),
                        child: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ), // myIcon is a 48px-wide widget.
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
