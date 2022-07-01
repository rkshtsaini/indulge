import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../icons/my_flutter_app_icons.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List<Stats> static = [
    Stats(
      'Likes Sent',
      '135',
      'assets/Group 12573.svg',
    ),
    Stats(
      'Total Matches',
      '65 %',
      'assets/Path 81167.svg',
    ),
    Stats(
      'Super Likes',
      '135',
      'assets/Group 12592.svg',
    ),
    Stats(
      'Super Boost',
      '7 Times',
      'assets/like.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(73, 25, 181, 1),
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
                          onTap: () {
                            Navigator.pop(context);
                          },
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
                      'Your Statistics',
                      style: TextStyle(
                          color: Colors.white,
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
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(73, 25, 181, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(MediaQuery.of(context).size.width / 18),
                    bottomRight: Radius.circular(
                        MediaQuery.of(context).size.width / 18))),
            height: MediaQuery.of(context).size.height * 0.25,
            child: Center(
                child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: MediaQuery.of(context).size.height * 0.08,
              child: Image.asset('assets/Mask Group 248.png'),
            )),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                  top: MediaQuery.of(context).size.width / 30),
              child: GridView.builder(
                itemCount: static.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    shadowColor: const Color.fromRGBO(0, 0, 0, 0.12),
                    elevation: 4,
                    child: GridTile(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 60.0, left: 40, right: 40),
                        child: SvgPicture.asset(
                          static[index].logo,
                        ),
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              static[index].quantity,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Navigo'),
                            ),
                            Text(
                              static[index].title,
                              style: const TextStyle(
                                  color: Color.fromRGBO(149, 149, 149, 1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Navigo'),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Stats {
  String title;
  String quantity;
  String logo;
  Stats(this.title, this.quantity, this.logo);
}
