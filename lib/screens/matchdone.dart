// ignore_for_file: unnecessary_const

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indulge/icons/my_flutter_app_icons.dart';
import 'package:indulge/screens/home_screen.dart';

import 'package:indulge/widgets/widgets.dart';

import 'chat.dart';

class MatchDone extends StatefulWidget {
  const MatchDone({Key? key}) : super(key: key);

  @override
  State<MatchDone> createState() => _MatchDoneState();
}

class _MatchDoneState extends State<MatchDone> {
  List chats = [
    Chats(
        sender: true,
        image: "assets/Mask Group 227.png",
        messageText:
            const Text("Ahh! you looks great. this would work fine 🔥🔥")),
    Chats(
        sender: false,
        image: "assets/wepik-2022213-171247 1.png",
        messageText: const Text("Thanks 😍")),
    Chats(
        sender: true,
        image: "assets/Mask Group 227.png",
        messageText: const Text("Welcome! 😍")),
  ];
  var message = TextEditingController();
  var scrollcontroll = ScrollController();
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Group 12027@3x.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null /* add child content here */,
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Match',
                        style: TextStyle(
                          fontFamily: 'Navigo',
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: MediaQuery.of(context).size.width / 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width / 8,
                  right: MediaQuery.of(context).size.width / 12,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(MyFlutterApp.layer_22,
                          color: Colors.white)),
                ),
                Positioned(
                    right: MediaQuery.of(context).size.width / 4,
                    left: MediaQuery.of(context).size.width / 4,
                    top: MediaQuery.of(context).size.width / 3,
                    child: SvgPicture.asset(
                      'assets/Group 5788.svg',
                      height: MediaQuery.of(context).size.width / 2.5,
                    )),
                Positioned(
                  right: MediaQuery.of(context).size.width / 4,
                  left: MediaQuery.of(context).size.width / 4,
                  top: MediaQuery.of(context).size.width / 1.5,
                  child: Container(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 70),
                    // margin: EdgeInsets.only(
                    //     left: MediaQuery.of(context).size.width / 3.3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromRGBO(124, 45, 220, 1)),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      // maxRadius: MediaQuery.of(context).size.width / 6,
                      radius: MediaQuery.of(context).size.height * 0.09,
                      //  MediaQuery.of(context).size.width / 5,
                      backgroundImage: const AssetImage(
                        "assets/Mask Group 248.png",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 0.85,
                      left: MediaQuery.of(context).size.width / 10,
                      right: MediaQuery.of(context).size.width / 10),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        spacer(context),
                        spacer(context),
                        // spacer(context),
                        // spacer(context),
                        // spacer(context),
                        Text(
                          'It\'s a Match',
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: MediaQuery.of(context).size.width / 10,
                              fontFamily: 'Navigo'),
                        ),
                        Text(
                          'You and Natalie Joan have liked \neach other',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: MediaQuery.of(context).size.width / 30,
                              fontFamily: 'Navigo'),
                        ),
                        spacer(context),
                        // spacer(context),
                        // spacer(context),
                        // spacer(context),
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(30)),
                          // height: MediaQuery.of(context).size.width / ,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: TextField(
                              textAlign: TextAlign.start,
                              controller: message,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontFamily: 'Navigo',
                                      color: const Color.fromRGBO(
                                          167, 167, 167, 1),
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              22),
                                  hintText: "  Say something...",
                                  suffixIconConstraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.of(context).size.width /
                                              15),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                50,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const ChatScreen(),
                                              ));
                                          setState(() {
                                            FocusScope.of(context).unfocus();
                                            if (message.text.isNotEmpty) {
                                              chats.add(
                                                Chats(
                                                  sender: true,
                                                  image:
                                                      "assets/Mask Group 227.png",
                                                  messageText: Text(
                                                    message.text.trim(),
                                                    style: const TextStyle(
                                                        fontFamily: 'Navigo'),
                                                  ),
                                                ),
                                              );
                                              print(chats.last.messageText);
                                              message.clear();
                                              scrollcontroll.jumpTo(
                                                  scrollcontroll.position
                                                      .maxScrollExtent);
                                            } else {}
                                          });
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    50),
                                            child: const Icon(
                                              MyFlutterApp.send,
                                              color: const Color.fromRGBO(
                                                  255, 51, 102, 1),
                                            )),
                                      ),
                                    ],
                                  )),
                              maxLines: null,
                            ),
                          ),
                        ),
                        // Card(
                        //   margin: EdgeInsets.zero,
                        //   shape: RoundedRectangleBorder(
                        //       side: BorderSide(color: Colors.purple),
                        //       borderRadius: BorderRadius.circular(
                        //           MediaQuery.of(context).size.width / 10)),
                        //   elevation: 80,
                        //   //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/40,right: MediaQuery.of(context).size.width/40),
                        //   child: Padding(
                        //     padding: EdgeInsets.all(
                        //         MediaQuery.of(context).size.height * 0.0001),
                        //     child: TextField(
                        //       textAlign: TextAlign.center,
                        //       controller: message,
                        //       decoration: InputDecoration(
                        //           border: InputBorder.none,
                        //           hintStyle: TextStyle(
                        //               fontFamily: 'Navigo',
                        //               color: Color.fromRGBO(167, 167, 167, 1),
                        //               fontSize:
                        //                   MediaQuery.of(context).size.width /
                        //                       22),
                        //           hintText: "  Say something...",
                        //           suffixIconConstraints: BoxConstraints(
                        //               maxHeight:
                        //                   MediaQuery.of(context).size.width /
                        //                       15),
                        //           suffixIcon: Row(
                        //             mainAxisSize: MainAxisSize.min,
                        //             children: [
                        //               SizedBox(
                        //                 width:
                        //                     MediaQuery.of(context).size.width /
                        //                         50,
                        //               ),
                        //               InkWell(
                        //                 onTap: () {
                        //                   setState(() {
                        //                     FocusScope.of(context).unfocus();
                        //                     if (message.text.isNotEmpty) {
                        //                       chats.add(
                        //                         Chats(
                        //                           sender: true,
                        //                           image:
                        //                               "assets/Mask Group 227.png",
                        //                           messageText: Text(
                        //                             message.text.trim(),
                        //                             style: TextStyle(
                        //                                 fontFamily: 'Navigo'),
                        //                           ),
                        //                         ),
                        //                       );
                        //                       print(chats.last.messageText);
                        //                       message.clear();
                        //                       scrollcontroll.jumpTo(
                        //                           scrollcontroll.position
                        //                               .maxScrollExtent);
                        //                     } else {}
                        //                   });
                        //                 },
                        //                 child: Padding(
                        //                   padding: EdgeInsets.only(
                        //                       right: MediaQuery.of(context)
                        //                               .size
                        //                               .width /
                        //                           50),
                        //                   child: Image.asset(
                        //                     "assets/send.png",
                        //                     height: MediaQuery.of(context)
                        //                             .size
                        //                             .width /
                        //                         10,
                        //                   ),
                        //                 ),
                        //               ),
                        //             ],
                        //           )),
                        //       maxLines: null,
                        //     ),
                        //   ),
                        // ),
                        spacer(context),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: simpleButton('Keep Swiping', context, () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Home_Screen(),
                                ));
                          }),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
