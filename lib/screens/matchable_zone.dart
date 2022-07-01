import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../icons/my_flutter_app_icons.dart';
import 'matchdone.dart';

class MetchableZone extends StatefulWidget {
  const MetchableZone({Key? key}) : super(key: key);

  @override
  State<MetchableZone> createState() => _MetchableZoneState();
}

class _MetchableZoneState extends State<MetchableZone> {
  List img = [
    "assets/Mask Group 235.png",
    "assets/Mask Group 236.png",
    "assets/Mask Group 237.png",
    "assets/Mask Group 210.png",
    "assets/Mask Group 233.png",
    "assets/Mask Group 234.png",
  ];
  List imgIndex = [true, false, false, true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                height: MediaQuery.of(context).size.width / 1,
                width: MediaQuery.of(context).size.width / 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 35),
                          elevation: 2,
                          child: InkWell(
                            child: SizedBox(
                                height: MediaQuery.of(context).size.width / 9.5,
                                width: MediaQuery.of(context).size.width / 9,
                                child: Icon(
                                  MyFlutterApp.group_5574,
                                  color: Colors.black,
                                  size: MediaQuery.of(context).size.height / 20,
                                )),
                          )),
                      Text(
                        'My MatchAble Zone',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width / 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 30,
                      )
                    ],
                  ),
                )),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 20,
              right: MediaQuery.of(context).size.width / 20,
              top: MediaQuery.of(context).size.width / 40),
          child: GridView.builder(
            itemCount: img.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const MatchDone()));
                },
                child: GridTile(
                  header: Visibility(
                    visible: imgIndex[index],
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/king.svg'),
                        )),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      img[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  footer: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.transparent])),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20,
                          bottom: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Rachel, 20",
                        style: TextStyle(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: MediaQuery.of(context).size.width / 19),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
