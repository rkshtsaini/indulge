import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:toggle_switch/toggle_switch.dart';

import '../icons/my_flutter_app_icons.dart';
import '../widgets/widgets.dart';
import 'chat.dart';

class Messaged extends StatefulWidget {
  const Messaged({Key? key}) : super(key: key);

  @override
  State<Messaged> createState() => _MessagedState();
}

class _MessagedState extends State<Messaged> {
  var images = [
    "assets/Mask Group 282@2x.png",
    "assets/Mask Group 283@2x.png",
    "assets/Mask Group 282@2x.png",
    "assets/Mask Group 280.png",
    "assets/Mask Group 283@2x.png",
    "assets/Mask Group 280.png",
  ];
  bool _toggle = false;
  var message = TextEditingController();
  var scrollcontroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(74, 20, 140, 1),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            actions: [
              Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  height: w / 1,
                  width: w / 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w / 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                            borderRadius: BorderRadius.circular(w / 35),
                            elevation: 2,
                            child: InkWell(
                              child: SizedBox(
                                  height: w / 9.5,
                                  width: w / 9,
                                  child: Icon(
                                    MyFlutterApp.group_5574,
                                    color: Colors.black,
                                    size: h / 20,
                                  )),
                            )),
                        Text(
                          'My Matches',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: w / 17,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: w / 30,
                        )
                      ],
                    ),
                  )),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(w / 20),
                child: Text(
                  "Recent matches",
                  style: TextStyle(
                    fontFamily: 'Navigo',
                    fontSize: w / 19,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              SizedBox(
                height: w / 5,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    "assets/Mask Group 282@2x.png",
                    "assets/Mask Group 283@2x.png",
                    "assets/Mask Group 282@2x.png",
                    "assets/Mask Group 280.png",
                    "assets/Mask Group 283@2x.png",
                    "assets/Mask Group 280.png",
                  ]
                      .map((e) => Padding(
                            padding: EdgeInsets.all(w / 100),
                            child: CircleAvatar(
                              radius: w / 10,
                              backgroundImage: AssetImage(e),
                            ),
                          ))
                      .toList(),
                ),
              ),
              spacer(context),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  width: w,
                  child: Padding(
                    padding: EdgeInsets.all(w / 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //shrinkWrap: true
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: (w / 18),
                          ),
                          child: ToggleSwitch(
                            minWidth: w * 0.39,
                            cornerRadius: 20.0,
                            activeBgColors: const [
                              [
                                Color.fromRGBO(121, 47, 212, 1),
                                Color.fromRGBO(98, 33, 177, 1)
                              ],
                              [
                                Color.fromRGBO(121, 47, 212, 1),
                                Color.fromRGBO(98, 33, 177, 1)
                              ],
                            ],
                            activeFgColor: Colors.white,
                            inactiveBgColor:
                                const Color.fromRGBO(238, 238, 238, 1),
                            inactiveFgColor: Colors.black,
                            initialLabelIndex: _toggle ? 1 : 0,
                            totalSwitches: 2,
                            fontSize: (w / 23),
                            labels: const ['Messages', 'Requests'],
                            radiusStyle: true,
                            onToggle: (index) {
                              setState(() {
                                _toggle = !_toggle;
                              });
                            },
                          ),
                        ),
                        _toggle
                            ? Requests(images: images)
                            : Message(images: images),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Expanded(
        child: ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: images.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(
          top: w / 40,
          bottom: w / 40,
        ),
        child: Slidable(
          key: const ValueKey(0),
          endActionPane: const ActionPane(
            extentRatio: 0.35,
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                onPressed: doNothing,
                backgroundColor: Color.fromRGBO(74, 20, 140, 1),
                foregroundColor: Colors.white,
                icon: MyFlutterApp.block_user,
              ),
              SlidableAction(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                onPressed: doNothing,
                backgroundColor: Color.fromRGBO(255, 51, 102, 1),
                foregroundColor: Colors.white,
                icon: MyFlutterApp.layer_1,
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const ChatScreen(),
                  ));
            },
            child: Card(
              color: const Color.fromRGBO(248, 248, 248, 1),
              elevation: 1,
              child: ListTile(
                contentPadding: EdgeInsets.all(w / 35),
                leading: Container(
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(w / 25)),
                  height: w / 7,
                  child: Image.asset(
                    images[index],
                  ),
                ),
                title: Text("Rachel, 20",
                    style: TextStyle(
                        fontSize: w / 18,
                        fontFamily: 'Navigo',
                        fontWeight: FontWeight.w500)),
                subtitle: const Text(
                  'How about you? How do you...',
                  style: TextStyle(
                      color: Color.fromRGBO(129, 129, 129, 1), fontSize: 15),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

class Requests extends StatelessWidget {
  const Requests({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              top: w / 40,
              bottom: w / 40,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ChatScreen(),
                    ));
              },
              child: Card(
                color: const Color.fromRGBO(248, 248, 248, 1),
                elevation: 1,
                child: ListTile(
                  contentPadding: EdgeInsets.all(w / 30),
                  leading: Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(w / 25)),
                    height: w / 7,
                    child: Image.asset(
                      images[index],
                    ),
                  ),
                  title: Text("Rachel, 20",
                      style: TextStyle(
                          fontSize: w / 18,
                          fontFamily: 'Navigo',
                          fontWeight: FontWeight.w500)),
                  subtitle: Container(
                    child: Container(
                      // width: w * 0.6,
                      // height: h * 0.043,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(h / 20),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: w * 0.02,
                          right: w * 0.03,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontFamily: 'Navigo',
                                  color: const Color.fromRGBO(129, 129, 129, 1),
                                  fontSize: w / 25),
                              hintText: "Say Something...",
                              suffixIconConstraints:
                                  BoxConstraints(maxHeight: w / 15),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: w / 50,
                                  ),
                                  InkWell(
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                50),
                                        child: Icon(
                                          MyFlutterApp.send,
                                          size: w / 18,
                                          color: const Color.fromRGBO(
                                              255, 83, 126, 1),
                                        )),
                                  ),
                                ],
                              )),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    width: w * 0.7,
                    height: h * 0.045,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(h / 20),
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(170, 213, 233, 1),
                              Color.fromRGBO(97, 54, 193, 1),
                            ])),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: w / 18),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 51, 102, 1),
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        MyFlutterApp.like,
                        color: Colors.white,
                        size: w / 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void doNothing(BuildContext context) {}
