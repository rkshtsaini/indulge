// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:indulge/screens/home_screen.dart';
import 'package:indulge/screens/login_screen.dart';
import 'package:indulge/screens/plans.dart';
import 'package:indulge/screens/statistics.dart';
import 'package:provider/provider.dart';

import '../Updater.dart';
import '../icons/my_flutter_app_icons.dart';
import '../widgets/widgets.dart';
import 'intrest_screen.dart';

class Profile extends StatefulWidget {
  Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _view = false;
  bool _about = false;
  bool _moreinfo = false;
  List boolList = [
    false,
    true,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    true,
    false
  ];
  final List _intrest = [
    "Fishing",
    "Dancing",
    "Walking",
    "Shopping",
  ];
  List<Map<String, dynamic>> edit = [
    {
      "title": "Gender",
      "value": "Male",
    },
    {
      "title": "Interested in",
      "value": "Female",
    },
    {
      "title": "Looking for",
      "value": "Casual",
    },
    {
      "title": "Height",
      "value": "5''7\"Feet",
    },
    {
      "title": "Ethnicity",
      "value": "Asian",
    },
    {
      "title": "Children",
      "value": "Want Children",
    },
    {
      "title": "Education",
      "value": "Socially",
    },
    {
      "title": "Religion",
      "value": "Hindu",
    },
    {
      "title": "Zodiac signs",
      "value": "Scorpio",
    },
    {
      "title": "Drink",
      "value": "Socially",
    },
    {
      "title": "Smoke",
      "value": "Socially",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/Mask Group 269.png",
              fit: BoxFit.cover,
            )),
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Container(
                  decoration: BoxDecoration(
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home_Screen(),
                                ));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width / 35)),
                              height: MediaQuery.of(context).size.width / 9.5,
                              width: MediaQuery.of(context).size.width / 9,
                              child: Center(
                                child: Icon(
                                  MyFlutterApp.group_5574,
                                  color: Colors.black,
                                  size: MediaQuery.of(context).size.height / 20,
                                ),
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login_Screen(),
                                ));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width / 35)),
                              height: MediaQuery.of(context).size.width / 9.5,
                              width: MediaQuery.of(context).size.width / 9,
                              child: Icon(
                                MyFlutterApp.path910,
                                size: MediaQuery.of(context).size.width / 18,
                                color: Color.fromRGBO(255, 51, 102, 1),
                              )),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 30),
                child: InkWell(
                  onTap: (() {
                    // setState(() {
                    //   _view = !_view;
                    // });
                  }),
                  child: Container(
                    height: MediaQuery.of(context).size.width / 10,
                    width: MediaQuery.of(context).size.width / 10,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 51, 102, 1),
                          Color.fromRGBO(235, 13, 69, 1),
                        ]),
                        // color: _view ? Colors.white : Colors.pink,
                        borderRadius: BorderRadius.circular(40)),
                    child: _view
                        ? null
                        : Image.asset(
                            'assets/view.png',
                          ),
                  ),
                ),
              ),
              GestureDetector(
                onVerticalDragStart: (details) {
                  // setState(() {
                  //   _view = !_view;
                  // });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width / 15),
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width / 15))),
                  height: _view
                      ? MediaQuery.of(context).size.height / 1.46
                      : MediaQuery.of(context).size.height / 2.3,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 25),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Scott, 21',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    15)),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  50,
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  50),
                                          child: _moreinfo
                                              ? SvgPicture.asset(
                                                  'assets/king.svg')
                                              : SvgPicture.asset(
                                                  'assets/layer1.svg'),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    50),
                                            child: Icon(
                                              MyFlutterApp.placeholder,
                                              color: Color.fromRGBO(
                                                  235, 13, 69, 1),
                                              size: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  50,
                                            )),
                                        Text(
                                          'Portiand, Oregon',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  28,
                                              color: Color.fromRGBO(
                                                  129, 129, 129, 1)),
                                        ),
                                      ],
                                    ),
                                    spacer(context),
                                    spacer2(context),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           EditProfile(),
                                            //     ));
                                          },
                                          child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  10,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  4,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              15),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromRGBO(
                                                        255, 51, 102, 1),
                                                    Color.fromRGBO(
                                                        235, 13, 69, 1),
                                                  ])),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            50),
                                                    child: Icon(
                                                      MyFlutterApp.write,
                                                      color: Colors.white,
                                                      size:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              25,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Edit',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            28),
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  35),
                                          child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Statistics(),
                                                    ));
                                              },
                                              child: Icon(
                                                MyFlutterApp.settings,
                                                color: Color.fromRGBO(
                                                    7, 211, 223, 1),
                                              )),
                                        )
                                      ],
                                    ),
                                    _moreinfo
                                        ? Container()
                                        : Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/king.svg'),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              Plans_Screen(),
                                                        ));
                                                  },
                                                  child: Text(
                                                    'Get Premium',
                                                    style: TextStyle(
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            28,
                                                        color: Color.fromRGBO(
                                                            255, 51, 102, 1)),
                                                  )),
                                            ],
                                          ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // spacer(context),
                          Text(
                            'About',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize:
                                    MediaQuery.of(context).size.width / 17),
                          ),
                          Container(
                            height: _about
                                ? MediaQuery.of(context).size.width / 1.9
                                : MediaQuery.of(context).size.width / 6,
                            width: 400,
                            child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren",
                                style: TextStyle(
                                    height: 1.6,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 28,
                                    color: Color.fromRGBO(129, 129, 129, 1))),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _about = !_about;
                                  });
                                },
                                child: _about
                                    ? Text(
                                        'Show Less',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                28,
                                            color: Color.fromRGBO(
                                                255, 51, 102, 1)),
                                      )
                                    : Text(
                                        'Show More',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                28,
                                            color: Color.fromRGBO(
                                                255, 51, 102, 1)),
                                      )),
                          ),
                          // spacer2(context),
                          Row(
                            children: [
                              Text(
                                "Interests",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize:
                                        MediaQuery.of(context).size.width / 17),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 35),
                                child: Icon(
                                  MyFlutterApp.write,
                                  color: Color.fromRGBO(97, 54, 193, 1),
                                  size: MediaQuery.of(context).size.width / 25,
                                ),
                              )
                            ],
                          ),
                          spacer(context),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 11,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _intrest.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width /
                                          30),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width / 5,
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(170, 213, 233, 1),
                                        Color.fromRGBO(97, 54, 193, 1)
                                      ]),
                                      borderRadius: BorderRadius.circular(
                                          MediaQuery.of(context).size.width /
                                              22),
                                    ),
                                    child: Center(
                                      child: Text(_intrest[index],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  28,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1))),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          spacer(context),
                          Row(
                            children: [
                              Text(
                                "Photos",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize:
                                        MediaQuery.of(context).size.width / 17),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 35),
                                child: Icon(
                                  MyFlutterApp.write,
                                  color: Color.fromRGBO(97, 54, 193, 1),
                                  size: MediaQuery.of(context).size.width / 25,
                                ),
                              )
                            ],
                          ),
                          spacer(context),
                          GridView(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [1, 2, 3, 4, 5, 6]
                                  .map((e) => ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/Mask Group 237.png",
                                        fit: BoxFit.cover,
                                      )))
                                  .toList(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10)),

                          Center(
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _moreinfo = !_moreinfo;
                                  });
                                },
                                child: Visibility(
                                  visible: !_moreinfo,
                                  child: Text(
                                    'More Info',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        color: Color.fromRGBO(255, 51, 102, 1)),
                                  ),
                                )),
                          ),
                          _moreinfo ? Divider() : Container(),
                          Container(
                            child: _moreinfo ? moreInfo() : Container(),
                          ),
                          _moreinfo ? Divider() : Container(),
                          Visibility(
                            visible: _moreinfo,
                            child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _moreinfo = !_moreinfo;
                                    });
                                  },
                                  child: Text(
                                    'Less Info',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        color: Color.fromRGBO(255, 51, 102, 1)),
                                  )),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/instagram(1).svg',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width / 25,
                                    ),
                                    child: Text('Instagram'),
                                  )
                                ],
                              ),
                              Container(height: 40, child: VerticalDivider()),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/Layer 2.svg',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width / 25),
                                    child: Text('Spotify'),
                                  )
                                ],
                              ),
                            ],
                          ),

                          Visibility(
                            visible: _moreinfo,
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  _moreinfo ? 'Delete my account' : '',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              20,
                                      color: Color.fromRGBO(255, 51, 102, 1)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget moreInfo() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          // onTap: () {
          //   if (index == 1) {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => IntrestedIn(
          //                   text: "Update",
          //                 )));
          //   } else if (index == 9) {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => Drink(
          //                   text: "Update",
          //                 )));
          //   } else if (index == 4) {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => EthnicityFilter(
          //                   text: "Update",
          //                 )));
          //   }
          // },
          title: Text(
            edit[index]["title"],
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: MediaQuery.of(context).size.width / 25),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                edit[index]["value"],
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: MediaQuery.of(context).size.width / 25),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 40,
              ),
              Visibility(
                visible: boolList[index],
                child: Icon(
                  MyFlutterApp.write,
                  color: Color.fromRGBO(97, 54, 193, 1),
                  size: MediaQuery.of(context).size.width / 25,
                ),
                replacement: Container(),
              )
            ],
          ),
        );
      },
      itemCount: edit.length,
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<Map<String, dynamic>> edit = [];
  var Amax = "0";
  var Amin = "0";
  @override
  Widget build(BuildContext context) {
    edit = [
      // {
      //   "title": "Age Range",
      //   "value": "${Provider.of<Updater>(context, listen: true).min_age}"
      //           .split(".")[0] +
      //       "-" +
      //       "${Provider.of<Updater>(context, listen: false).max_age.toStringAsFixed(2)}"
      //           .split(".")[0],
      // },
      // {
      //   "title": "Distance",
      //   "value":
      //       "${Provider.of<Updater>(context, listen: true).min_dis.toStringAsFixed(2)}"
      //               .split(".")[0] +
      //           "-" +
      //           "${Provider.of<Updater>(context, listen: false).max_dis.toStringAsFixed(2)}"
      //               .split(".")[0],
      // },
      {
        "title": "Someone who is looking for",
        "value": "Casual",
      },
      {
        "title": "Qualification",
        "value": "College",
      },
      {
        "title": "Zodiac sign",
        "value": "Scorpio",
      },
      {
        "title": "Drinking",
        "value": "Socially",
      },
      {
        "title": "Smoking",
        "value": "Socially",
      },
      {
        "title": "Religion",
        "value": "Hindu",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Material(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 35),
            elevation: 2,
            child: InkWell(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: SizedBox(
                  height: MediaQuery.of(context).size.width / 9.5,
                  width: MediaQuery.of(context).size.width / 9,
                  child: Icon(
                    MyFlutterApp.group_5574,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height / 20,
                  )),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
        child: ListView(
          children: [
            Text(
              "Looking for something \nspecific?",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 12,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Navigo"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 25,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  // onTap: () {
                  //   if (index == 0) {
                  //     setState(() {
                  //       range(
                  //         Provider.of<Updater>(context, listen: false).min_age,
                  //         Provider.of<Updater>(context, listen: false).max_age,
                  //         "Age",
                  //       );
                  //     });
                  //   } else if (index == 1) {
                  //     range(
                  //         Provider.of<Updater>(context, listen: false).min_dis,
                  //         Provider.of<Updater>(context, listen: false).max_dis,
                  //         "Distance");
                  //   } else if (index == 2) {
                  //     Navigator.push(
                  //         context,
                  //         CupertinoPageRoute(
                  //             builder: (context) =>
                  //                 IntrestedIn(text: "Update")));
                  //   } else if (index == 3) {
                  //     Navigator.push(
                  //         context,
                  //         CupertinoPageRoute(
                  //             builder: (context) => Education(text: "Update")));
                  //   } else if (index == 4) {
                  //     Navigator.push(
                  //         context,
                  //         CupertinoPageRoute(
                  //             builder: (context) => Zodiac(text: "Update")));
                  //   } else if (index == 5) {
                  //     // Navigator.push(
                  //     //     context,
                  //     //     CupertinoPageRoute(
                  //     //         builder: (context) => Behaviour(text: "Update")));
                  //   } else if (index == 6) {
                  //     Navigator.push(
                  //         context,
                  //         CupertinoPageRoute(
                  //             builder: (context) => Smoke(text: "Update")));
                  //   } else if (index == 7) {
                  //     Navigator.push(
                  //         context,
                  //         CupertinoPageRoute(
                  //             builder: (context) => Religion(text: "Update")));
                  //   }
                  // },
                  title: Text(
                    edit[index]["title"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    edit[index]["value"],
                    style: const TextStyle(color: Color(0xffA7A7A7)),
                  ),
                );
              },
              itemCount: edit.length,
            ),
            spacer(context),
            simpleButton("Update", context, () {}),
            spacer(context),
          ],
        ),
      ),
    );
  }

  range(min, max, String text) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height / 2,
            maxWidth: MediaQuery.of(context).size.width),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      text,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      "Only members form the selected range will be available to you. Widen your range to view more people",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 24,
                          fontWeight: FontWeight.w500),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${min.toStringAsFixed(2)}".split(".")[0],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25),
                            ),
                            Text(
                              "${max.toStringAsFixed(2)}".split(".")[0],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25),
                            )
                          ],
                        ),
                        RangeSlider(
                            activeColor: Colors.purple.shade300,
                            min: text.contains("Age")
                                ? double.parse(18.toString())
                                : double.parse(0.toString()),
                            max: text.contains("Age")
                                ? double.parse(55.toString())
                                : double.parse(50.toString()),
                            //divisions: 37,
                            values: RangeValues(min, max),
                            onChanged: (values) {
                              setState(() {
                                min = values.start;
                                max = values.end;
                              });
                            }),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 2,
                        child: simpleButton("Done", context, () {
                          setState(() {
                            if (text.contains("Age")) {
                              Provider.of<Updater>(context, listen: false)
                                  .getAge(min, max);
                            } else {
                              Provider.of<Updater>(context, listen: false)
                                  .getDistance(min, max);
                            }
                          });
                          Navigator.pop(context);
                        }),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        });
  }
}
