import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indulge/icons/my_flutter_app_icons.dart';
import 'package:indulge/screens/home.dart';
import 'package:indulge/screens/matchable_zone.dart';
import 'package:indulge/screens/message.dart';

import 'package:indulge/screens/profile_screen.dart';
import 'package:indulge/screens/top_picks.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int screenindex = 2;
  final screens = [
    const MetchableZone(),
    const Messaged(),
    MainHome(),
    const TopPicks(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenindex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: screenindex,
        items: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 18,
            width: MediaQuery.of(context).size.height / 18,
            child: Icon(
              MyFlutterApp.group_5618,
              color: Colors.white,
              size: MediaQuery.of(context).size.height / 30,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 18,
            width: MediaQuery.of(context).size.height / 18,
            child: Icon(
              MyFlutterApp.chat,
              size: MediaQuery.of(context).size.height / 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.height / 18,
              child: SvgPicture.asset(
                'assets/Group 5614.svg',
                height: MediaQuery.of(context).size.width / 10,
                width: MediaQuery.of(context).size.width / 10,
                fit: BoxFit.scaleDown,
              )),
          SizedBox(
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.height / 18,
              child: Icon(
                MyFlutterApp.five_stars,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 30,
              )),
          SizedBox(
              height: MediaQuery.of(context).size.height / 18,
              width: MediaQuery.of(context).size.height / 18,
              child: Icon(
                MyFlutterApp.group_5619,
                size: MediaQuery.of(context).size.height / 30,
                color: Colors.white,
              ))
        ],
        color: const Color.fromRGBO(7, 211, 223, 1),
        buttonBackgroundColor: const Color.fromRGBO(97, 54, 193, 1),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            screenindex = index;
            // final navigationState = _bottomNavigationKey.currentState;
            // navigationState?.setPage(0);
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
