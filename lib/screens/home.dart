import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:indulge/screens/popup.dart';
import 'package:indulge/screens/quiz_screen.dart';

import 'package:swipe_cards/swipe_cards.dart';

import '../icons/my_flutter_app_icons.dart';
import '../widgets/style.dart';
import '../widgets/widgets.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  List img2 = [
    "assets/gettyimages-175378064-612x612.jpg",
    "assets/gettyimages-494815664-612x612.jpg",
    "assets/gettyimages-499707640-612x612.jpg",
    "assets/gettyimages-623804836-612x612.jpg",
    "assets/Mask Group 236.png",
    "assets/Mask Group 237.png",
  ];

  List img = [
    "assets/Mask Group 269.png",
    "assets/Mask Group 210.png",
    "assets/Mask Group 233.png",
    "assets/Mask Group 234.png",
    "assets/Mask Group 235.png",
    "assets/Mask Group 236.png",
    "assets/Mask Group 237.png",
  ];

  List<SwipeItem> item = [];
  List<SwipeItem> item2 = [];

  MatchEngine? _matchEngine;
  MatchEngine? _matchEngine2;
  var previous;
  var previous2;
  List<Info> list1 = [
    Info(MyFlutterApp.femenine, 'Women'),
    Info(MyFlutterApp.ruler, '5\' 8'),
    Info(MyFlutterApp.cake, '25'),
    Info(MyFlutterApp.magnet, 'Straight'),
    Info(MyFlutterApp.suitcase, 'Humaniser'),
  ];
  bool _boxOpen = false;
  bool _gift = false;
  bool _quiz = false;
  bool _join = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      for (var element in img) {
        item.add(SwipeItem(
            likeAction: () {},
            nopeAction: () {},
            superlikeAction: () {},
            content: slider(element)));
      }
      setState(() {
        _matchEngine = MatchEngine(swipeItems: item);
      });
    });

    super.initState();
    Future.delayed(Duration.zero, (() {
      for (var element2 in img2) {
        item2.add(SwipeItem(
            likeAction: () {},
            nopeAction: () {},
            superlikeAction: () {},
            content: slider2(element2)));
      }
      setState(() {
        _matchEngine2 = MatchEngine(swipeItems: item2);
      });
    }));
  }

  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: _quiz ? quiz() : home());
  }

  Widget home() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/Group 6368@3x.jpg',
                scale: 2.5,
              ),
              Container(
                height: h * 0.05,
                width: h * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w / 25),
                  color: const Color.fromRGBO(255, 245, 250, 1),
                ),
                child: const PopUp(),
              ),
            ],
          ),
        ),
        // actions: [

        // ],
      ),
      // key: _scaffoldKey,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            // top: h * 0.05,
            left: w * 0.05,
            right: w * 0.05,
            bottom: h * 0.02,
          ),
          child: Column(
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _matchEngine == null
                      ? const CircularProgressIndicator.adaptive()
                      : Material(
                          borderRadius: BorderRadius.circular(w / 20),
                          elevation: 0.5,
                          child: SwipeCards(
                              fillSpace: false,
                              upSwipeAllowed: true,
                              itemChanged: (i, index) {
                                setState(() {
                                  previous = index;
                                  if (previous == 3 || previous == 5) {
                                    setState(() {
                                      _quiz = !_quiz;
                                    });
                                  }
                                });
                              },
                              matchEngine: _matchEngine!,
                              onStackFinished: () {
                                _matchEngine?.rewindMatch();
                              },
                              itemBuilder: (context, index) {
                                return item[index].content;
                              }),
                        ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.04, right: w * 0.04, top: w * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Rachel, 20',
                              style: blackBold20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(h * 0.009),
                              child: Image.asset('assets/king.png'),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.009),
                          child: Text(
                            'I just live for happiness. I have plans and dreams in my life and do my best to get it',
                            style: blackLight13,
                          ),
                        ),
                        spacer2(context),
                        Text(
                          'Samantha\'s info',
                          style: blackBold20,
                        ),
                      ],
                    ),
                  ),
                  spacer2(context),
                  Wrap(
                    // alignment: WrapAlignment.start,
                    runSpacing: w / 20,
                    spacing: w / 20,
                    children: List.generate(
                      list1.length,
                      (index) => Container(
                        height: MediaQuery.of(context).size.height / 30,
                        width: MediaQuery.of(context).size.width / 3.8,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(246, 246, 246, 1),
                            borderRadius: BorderRadius.circular(w / 25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: w * 0.01,
                            ),
                            Icon(
                              list1[index].ixon,
                              size: w / 20,
                            ),
                            SizedBox(
                              width: w * 0.01,
                            ),
                            Text(
                              list1[index].title,
                              style: blackRegular13,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See More',
                        style: regular13,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: h * 0.5,
                    width: w * 0.9,
                    child: Stack(
                      children: [
                        Positioned(
                          top: h * 0.02,
                          left: w * 0.05,
                          right: w * 0.03,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(7, 211, 223, 1),
                                borderRadius: BorderRadius.circular(w / 25)),
                            height: h * 0.425,
                            width: w * 0.5,
                          ),
                        ),
                        Positioned(
                          top: h * 0.05,
                          left: w * 0.07,
                          right: w * 0.06,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(7, 211, 223, 0.5),
                                borderRadius: BorderRadius.circular(w / 25)),
                            height: h * 0.42,
                            width: w * 0.5,
                          ),
                        ),
                        Positioned(
                          top: h * 0.07,
                          left: w * 0.1,
                          right: w * 0.09,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(7, 211, 223, 0.5),
                                borderRadius: BorderRadius.circular(25)),
                            height: h * 0.42,
                            width: w * 0.5,
                          ),
                        ),
                        Positioned(
                          left: w * 0.045,
                          right: w * 0.03,
                          child: SizedBox(
                            height: h * 0.42,
                            width: w * 0.5,
                            child: _matchEngine2 == null
                                ? Container(
                                    color: Colors.white,
                                  )
                                : _boxOpen
                                    ? InkWell(
                                        onTap: () {
                                          setState(() {
                                            _gift = true;
                                          });
                                        },
                                        child: _gift
                                            ? const OpenGiftBox()
                                            : const GiftBox())
                                    : SwipeCards(
                                        fillSpace: false,
                                        upSwipeAllowed: true,
                                        itemChanged: (i, index) {
                                          setState(() {
                                            previous2 = index;
                                            print(previous2);
                                            if (index == 2) {
                                              print('Show');
                                              _boxOpen = !_boxOpen;
                                            }
                                          });
                                        },
                                        matchEngine: _matchEngine2!,
                                        onStackFinished: () {
                                          _matchEngine2?.rewindMatch();
                                        },
                                        itemBuilder: (context, index) {
                                          return item2[index].content;
                                        }),
                          ),
                        ),
                        Positioned(
                          top: h * 0.02,
                          right: w * 0.08,
                          child: GestureDetector(
                            onTap: (() {
                              _matchEngine2?.currentItem?.superLike();
                              print('object');
                              setState(() {});
                            }),
                            child: _boxOpen
                                ? const Text('')
                                : Container(
                                    height: h * 0.06,
                                    width: h * 0.06,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(w / 30),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(170, 213, 233, 1),
                                          Color.fromRGBO(97, 54, 193, 1),
                                        ])),
                                    child: const Icon(
                                      MyFlutterApp.heart_empty_1,
                                      color: Colors.white,
                                    )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              _boxOpen
                  ? const Text('')
                  : Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(h * 0.01),
                        child: Text(
                          'My simple pleasures',
                          style: blackRegular13,
                        ),
                      ),
                    ),
              Padding(
                  padding: EdgeInsets.all(h * 0.01),
                  child: InkWell(
                    onTap: () {
                      if (item2.length == 1) {
                        setState(() {
                          _boxOpen = true;
                        });
                      }
                      // setState(() {
                      //   _boxOpen = true;
                      // });
                    },
                    child: _boxOpen
                        ? _gift
                            ? Image.asset('assets/Group 12023@3x.jpg')
                            : Text(
                                'Is eye gazing to come in attunement with others',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: w / 15,
                                    fontWeight: FontWeight.bold),
                              )
                        : Image.asset('assets/Group 12023@3x.jpg'),
                  )),
              spacer2(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget quiz() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/Group 6368@3x.jpg',
                scale: 2.5,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        print(_quiz);
                        _quiz = !_quiz;
                        _join = false;
                      });
                    },
                    child: SvgPicture.asset('assets/Group 12586 (1).svg'),
                  ),
                  const PopUp(),
                ],
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(236, 234, 237, 1),
                    Color.fromRGBO(233, 229, 228, 1)
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
              height: h / 1.45,
              width: w / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Stack(
                  children: [
                    Positioned(
                      right: w / 16,
                      left: w / 1.3,
                      child: Text('20\n06',
                          style: TextStyle(
                              color: Color.fromRGBO(74, 20, 140, 1),
                              fontSize: 25,
                              fontFamily: 'News706 BT')),
                    ),
                    Positioned(
                      top: w / 15,
                      child: Image.asset(
                        'assets/Group 12585@3x.png',
                        height: h / 1.9,
                      ),
                    ),
                    Positioned(
                      top: h / 1.9,
                      left: w / 9,
                      right: w / 9,
                      child: Column(
                        children: [
                          Text(
                            'LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 2,
                              fontSize: 10,
                              color: Color.fromRGBO(74, 20, 140, 1),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_alarm,
                                color: Color.fromRGBO(74, 20, 140, 1),
                              ),
                              Text(
                                ' 3:00 - 4:00 pm',
                                style: TextStyle(
                                    height: 2,
                                    fontSize: 18,
                                    color: Color.fromRGBO(74, 20, 140, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: h / 1.5,
              bottom: h * 0.00001,
              left: w / 15,
              right: w / 15,
              child: Container(
                height: h / 20,
                width: w / 1.2,
                color: Colors.transparent,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _join = true;
                          });
                        },
                        child: Container(
                          height: h,
                          width: w / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(242, 6, 172, 1),
                                Color.fromRGBO(255, 80, 203, 1)
                              ])),
                          child: Center(
                            child: _join
                                ? InkWell(
                                    onTap: (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                QuestionWidget(),
                                          ));
                                    }),
                                    child: Text(
                                      'JOIN NOW',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  )
                                : Text(
                                    'PARTICIPATE',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            print(_quiz);
                            _quiz = !_quiz;
                            _join = false;
                          });
                        },
                        child: Container(
                          height: h,
                          width: w / 9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Icon(
                            MyFlutterApp.close,
                            size: w / 20,
                            color: Color.fromRGBO(255, 51, 102, 1),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget slider(image) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 30),
          child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width / 20),
              child: Image.asset(
                image,
                height: MediaQuery.of(context).size.height * 0.5,
                // MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width * 1,
                //  MediaQuery.of(context).size.width / 1.5,
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.12,
          right: MediaQuery.of(context).size.width * 0.7,
          child: GestureDetector(
            onTap: () {
              _matchEngine?.rewindMatch();
            },
            child: const Icon(
              MyFlutterApp.undo_button,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.055,
          left: MediaQuery.of(context).size.width * 0.135,
          right: MediaQuery.of(context).size.width * 0.65,
          child: GestureDetector(
            onTap: () {
              _matchEngine?.currentItem?.nope();
              print('skiped');
            },
            child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 30),
                    color: Colors.white),
                child: Icon(
                  MyFlutterApp.close,
                  color: const Color.fromRGBO(255, 51, 102, 1),
                  size: MediaQuery.of(context).size.width / 18,
                )),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.055,
          right: MediaQuery.of(context).size.width * 0.135,
          left: MediaQuery.of(context).size.width * 0.65,
          child: GestureDetector(
            onTap: () {
              _matchEngine?.currentItem?.like();
              print('liked');
            },
            child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width / 30),
                  color: const Color.fromRGBO(255, 51, 102, 1),
                ),
                child: Icon(
                  MyFlutterApp.like,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width / 18,
                )),
          ),
        )
      ],
    );
  }

  Widget slider2(image2) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 20),
            child: Image.asset(
              image2,
              height: MediaQuery.of(context).size.height * 0.6,
              // MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width * 1,
              //  MediaQuery.of(context).size.width / 1.5,
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}

class OpenGiftBox extends StatelessWidget {
  const OpenGiftBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 20),
            child: Image.asset(
              'assets/Group 12584@3x.jpg',
              height: MediaQuery.of(context).size.height * 0.6,
              // MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width * 1,
              //  MediaQuery.of(context).size.width / 1.5,
              fit: BoxFit.cover,
            )),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Is eye gazing to come in attunement with others',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 17,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 30),
                        color: const Color.fromRGBO(255, 51, 102, 1),
                      ),
                      child: Icon(
                        MyFlutterApp.like,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 18,
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height / 22,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 20)),
                    child: Center(
                      child: Text(
                        '👋 Reply',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}

class GiftBox extends StatelessWidget {
  const GiftBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width / 20),
          child: Image.asset(
            'assets/Mask Group 287@3x.jpg',
            height: MediaQuery.of(context).size.height * 0.6,
            // MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width * 1,
            //  MediaQuery.of(context).size.width / 1.5,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width / 15),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 51, 102, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width / 25),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width / 25))),
              child: Text(
                '   My simple pleasures   ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 26),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Info {
  String title;
  IconData ixon;
  Info(this.ixon, this.title);
}
