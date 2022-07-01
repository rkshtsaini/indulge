// ignore_for_file: prefer_const_constructors, invalid_use_of_visible_for_testing_member, avoid_print, camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indulge/screens/popup2.dart';
import 'package:indulge/widgets/widgets.dart';

import 'package:intl/intl.dart';

import '../icons/my_flutter_app_icons.dart';

List allChats = [
  AllChats(normalchat: [
    Chats(
        sender: true,
        image: "assets/Mask Group 227.png",
        messageText: Text("Ahh! you looks great. this would work fine 🔥🔥")),
    Chats(
        sender: false,
        image: "assets/wepik-2022213-171247 1.png",
        messageText: Text("Thanks 😍")),
    Chats(
        sender: true,
        image: "assets/Mask Group 227.png",
        messageText: Text("Welcome! 😍")),
  ], questionchat: [
    QuestionChat(
        sender2: false,
        image2: 'assets/Mask Group 227.png',
        messageText2: Text(
          'What are your plans for today?',
        ))
  ])
];
List chats = [
  Chats(
      sender: true,
      image: "assets/Mask Group 227.png",
      messageText: Text("Ahh! you looks great. this would work fine 🔥🔥")),
  Chats(
      sender: false,
      image: "assets/wepik-2022213-171247 1.png",
      messageText: Text("Thanks 😍")),
  Chats(
      sender: true,
      image: "assets/Mask Group 227.png",
      messageText: Text("Welcome! 😍")),
];
List chats2 = [];
List chats3 = [];

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> itmes = [
    "Great, thanks!",
    "What time?",
    "Sure",
  ];
  var selected_index;

  File? image;
  var message = TextEditingController();
  var scrollcontroll = ScrollController();
  _showDialoge(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertbox(context);
      },
    );
  }

  void _showPopupMenu() async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 100, 100),
      items: [
        PopupMenuItem<String>(child: const Text('Doge'), value: 'Doge'),
        PopupMenuItem<String>(child: const Text('Lion'), value: 'Lion'),
      ],
      elevation: 8.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 20,
              right: MediaQuery.of(context).size.width / 30,
              bottom: MediaQuery.of(context).size.width / 14.5),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              SizedBox(
                width: MediaQuery.of(context).size.width / 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 30),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 10,
                        ),
                        child: Image.asset(
                          "assets/Mask Group 227.png",
                          height: MediaQuery.of(context).size.width / 10,
                          width: MediaQuery.of(context).size.width / 10,
                          fit: BoxFit.fitWidth,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 40,
                    ),
                    Text(
                      "Michlen, 22",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 22,
                        fontFamily: 'Navigo',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () => _showDialoge(context),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 35),
                          color: Color.fromRGBO(255, 51, 102, 1),
                        ),
                        height: MediaQuery.of(context).size.width / 9.5,
                        width: MediaQuery.of(context).size.width / 9,
                        child: Icon(
                          MyFlutterApp.group_6451,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width / 10,
                        ),
                      )),
                  PopUp2()
                ],
              )
            ],
          ),
        ),
        // actions: [
        //   Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.only(
        //             bottomRight:
        //                 Radius.circular(MediaQuery.of(context).size.width / 18),
        //             bottomLeft: Radius.circular(
        //                 MediaQuery.of(context).size.width / 18)),
        //         color: Color.fromRGBO(74, 20, 140, 1),
        //       ),
        //       height: MediaQuery.of(context).size.width / 1,
        //       width: MediaQuery.of(context).size.width / 1,
        //       child: Padding(
        //         padding: EdgeInsets.only(
        //             left: MediaQuery.of(context).size.width / 10,
        //             right: MediaQuery.of(context).size.width / 10,
        //             bottom: MediaQuery.of(context).size.width / 14.5),
        //         child:
        //       )),
        // ],
        toolbarHeight: MediaQuery.of(context).size.width / 4.5,
        flexibleSpace: Container(
          height: MediaQuery.of(context).size.width * 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight:
                    Radius.circular(MediaQuery.of(context).size.width / 18),
                bottomLeft:
                    Radius.circular(MediaQuery.of(context).size.width / 18)),
            color: Color.fromRGBO(74, 20, 140, 1),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              controller: scrollcontroll,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 25),
                    child: Text(
                      "YESTERDAY",
                      style: TextStyle(
                          fontFamily: 'Navigo',
                          color: Color.fromRGBO(129, 129, 129, 1),
                          fontSize: MediaQuery.of(context).size.width / 28),
                    ),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chats.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => chat(
                            message: chats[index].messageText,
                            sender: chats[index].sender,
                            image: chats[index].image,
                          )),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chats2.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => chat2(
                            message2: chats2[index].messageText2,
                            sender2: chats2[index].sender2,
                            image2: chats2[index].image2,
                          )),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chats3.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => chat3(
                            message3: chats3[index].messageText3,
                            sender3: chats3[index].sender3,
                            image3: chats3[index].image3,
                          )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 5,
              spacing: 5,
              children: List.generate(
                  itmes.length,
                  (index) => InkWell(
                        onTap: () {
                          setState(() {
                            FocusScope.of(context).unfocus();
                            if (itmes.isNotEmpty) {
                              chats.add(
                                Chats(
                                  sender: true,
                                  image: "assets/Mask Group 227.png",
                                  messageText: Text(
                                    itmes[index].toString(),
                                  ),
                                ),
                              );
                              print(chats.last.messageText);
                              message.clear();
                              scrollcontroll.jumpTo(
                                  scrollcontroll.position.maxScrollExtent);
                            } else {}
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(255, 213, 223, 1),
                                  width: selected_index == index ? 1 : 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              itmes[index],
                              style: TextStyle(
                                  fontFamily: 'Navigo',
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize:
                                      MediaQuery.of(context).size.width / 28,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )),
            ),
          ),
          Card(
            shadowColor: Color.fromRGBO(0, 0, 0, 0.12),
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            elevation: 80,
            //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/40,right: MediaQuery.of(context).size.width/40),
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 80),
              child: TextField(
                controller: message,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 100),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              constraints: BoxConstraints.loose(Size.fromHeight(
                                  MediaQuery.of(context).size.width / 3)),
                              context: context,
                              builder: (context) => Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          "Camera",
                                        ),
                                        trailing: Icon(MyFlutterApp.sevente),
                                        leading: Icon(
                                          MyFlutterApp.group_5748,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                        ),
                                        onTap: () async {
                                          final picker = await ImagePicker
                                              .platform
                                              .pickImage(
                                                  source: ImageSource.camera);
                                          if (picker != null) {
                                            setState(() {
                                              image = File(picker.path);
                                              chats.add(Chats(
                                                  image:
                                                      'assets/Mask Group 227.png',
                                                  sender: true,
                                                  messageText:
                                                      Image.file(image!)));
                                              scrollcontroll.jumpTo(
                                                  scrollcontroll.position
                                                      .maxScrollExtent);
                                            });
                                          }
                                        },
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Photos",
                                        ),
                                        trailing: Icon(MyFlutterApp.sevente),
                                        onTap: () async {
                                          final picker = await ImagePicker
                                              .platform
                                              .pickImage(
                                                  source: ImageSource.gallery);
                                          if (picker != null) {
                                            setState(() {
                                              image = File(picker.path);
                                              chats.add(Chats(
                                                  image:
                                                      'assets/Mask Group 227.png',
                                                  sender: true,
                                                  messageText:
                                                      Image.file(image!)));
                                              scrollcontroll.jumpTo(
                                                  scrollcontroll.position
                                                      .maxScrollExtent);
                                            });
                                          }
                                        },
                                        leading:
                                            Icon(Icons.photo_library_outlined),
                                      )
                                    ],
                                  ));
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 30),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width / 15),
                                  gradient: LinearGradient(colors: const [
                                    Color.fromRGBO(255, 83, 126, 1),
                                    Color.fromRGBO(255, 51, 102, 0.5)
                                  ])),
                              child: Icon(
                                MyFlutterApp.group_5748,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width / 10,
                              ),
                            )),
                      ),
                    ),
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontFamily: 'Navigo',
                        color: Color.fromRGBO(129, 129, 129, 1),
                        fontSize: MediaQuery.of(context).size.width / 22),
                    hintText: "Type Something...",
                    suffixIconConstraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.width / 15),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              FocusScope.of(context).unfocus();
                              if (message.text.isNotEmpty) {
                                chats.add(
                                  Chats(
                                    sender: true,
                                    image: "assets/Mask Group 227.png",
                                    messageText: Text(
                                      message.text.trim(),
                                      style: TextStyle(fontFamily: 'Navigo'),
                                    ),
                                  ),
                                );
                                print(chats.last.messageText);
                                message.clear();
                                scrollcontroll.jumpTo(
                                    scrollcontroll.position.maxScrollExtent);
                              } else {}
                            });
                          },
                          child: Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width / 50),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 30),
                                child: Icon(
                                  MyFlutterApp.send,
                                  color: Color.fromRGBO(255, 83, 126, 1),
                                ),
                              )),
                        ),
                      ],
                    )),
                maxLines: null,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class chat extends StatelessWidget {
  final Widget message;
  final sender;
  final String image;
  chat({Key? key, required this.message, this.sender, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 30,
          vertical: MediaQuery.of(context).size.width / 40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            sender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment:
                sender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Visibility(visible: !sender, child: profileImage(context)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 60,
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 2),

                    //width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      color: sender
                          ? const Color.fromRGBO(255, 226, 241, 1)
                          : const Color.fromRGBO(238, 222, 255, 1),
                      borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(15),
                          topLeft: const Radius.circular(15),
                          bottomLeft: sender
                              ? const Radius.circular(15)
                              : const Radius.circular(0),
                          bottomRight: sender
                              ? const Radius.circular(0)
                              : const Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(fit: FlexFit.loose, child: message),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 60,
                  ),
                  Visibility(visible: sender, child: profileImage(context)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 70,
              ),
              Padding(
                padding: sender
                    ? EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 10)
                    : EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 10),
                child: Text(
                  DateFormat('kk:mm').format(DateTime.now()),
                  // DateTime.now().toString(),
                  style: TextStyle(
                      fontFamily: 'Navigo',
                      color: Color.fromRGBO(129, 129, 129, 1),
                      fontSize: MediaQuery.of(context).size.width / 35),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget profileImage(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 100),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.width / 12,
            width: MediaQuery.of(context).size.width / 12,
          )),
    );
  }
}

class chat2 extends StatelessWidget {
  final Widget message2;
  final sender2;
  final String image2;
  chat2({Key? key, required this.message2, this.sender2, required this.image2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 30,
          vertical: MediaQuery.of(context).size.width / 40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            sender2 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment:
                sender2 ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Visibility(visible: !sender2, child: profileImage(context)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 60,
                  ),
                  Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 2),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(74, 20, 140, 1),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width / 25)),
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                  fit: FlexFit.loose,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
                                            25),
                                    child: (message2),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 18,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(7, 211, 223, 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        MediaQuery.of(context).size.width / 25),
                                    bottomRight: Radius.circular(
                                        MediaQuery.of(context).size.width /
                                            25))),
                            child: Center(
                              child: Text(
                                'Question',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25),
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 60,
                  ),
                  Visibility(visible: sender2, child: profileImage(context)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 70,
              ),
              Padding(
                padding: sender2
                    ? EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 9)
                    : EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 9),
                child: Text(
                  "16:30",
                  style: TextStyle(
                      fontFamily: 'Navigo',
                      color: Color.fromRGBO(129, 129, 129, 1),
                      fontSize: MediaQuery.of(context).size.width / 35),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget profileImage(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 100),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            image2,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.width / 12,
            width: MediaQuery.of(context).size.width / 12,
          )),
    );
  }
}

class chat3 extends StatelessWidget {
  final Widget message3;
  final sender3;
  final String image3;
  chat3({Key? key, required this.message3, this.sender3, required this.image3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 30,
          vertical: MediaQuery.of(context).size.width / 40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            sender3 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment:
                sender3 ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Visibility(visible: !sender3, child: profileImage(context)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 60,
                  ),
                  Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 1),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(7, 211, 223, 1),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width / 25)),
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                  fit: FlexFit.loose,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
                                            25),
                                    child: (message3),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: MediaQuery.of(context).size.width / 18,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(74, 20, 140, 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        MediaQuery.of(context).size.width / 25),
                                    bottomRight: Radius.circular(
                                        MediaQuery.of(context).size.width /
                                            25))),
                            child: Center(
                              child: Text(
                                'Quiz',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25),
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 60,
                  ),
                  Visibility(visible: sender3, child: profileImage(context)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 70,
              ),
              Padding(
                padding: sender3
                    ? EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 9)
                    : EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 9),
                child: Text(
                  "16:30",
                  style: TextStyle(
                      fontFamily: 'Navigo',
                      color: Color.fromRGBO(129, 129, 129, 1),
                      fontSize: MediaQuery.of(context).size.width / 35),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget profileImage(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 100),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            image3,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.width / 12,
            width: MediaQuery.of(context).size.width / 12,
          )),
    );
  }
}

Widget alertbox(context) {
  _showDialoge2(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialogebox2();
      },
    );
  }

  return SimpleDialog(
    backgroundColor: Colors.transparent,
    children: [
      Align(
          alignment: Alignment.topCenter,
          child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                MyFlutterApp.layer_22,
                color: Colors.white,
                size: MediaQuery.of(context).size.width / 12,
              ))),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 40,
                right: MediaQuery.of(context).size.width / 40,
                top: MediaQuery.of(context).size.width / 30),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                _showDialoge2(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: const [
                        Color.fromRGBO(170, 213, 233, 1),
                        Color.fromRGBO(97, 54, 193, 1),
                        Color.fromRGBO(74, 20, 140, 0.5),
                      ]),
                ),
                height: MediaQuery.of(context).size.width / 2.8,
                child: Stack(
                  children: [
                    Image.asset('assets/Mask Group 295.png'),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.16),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: SvgPicture.asset(
                                'assets/conversation.svg',
                                fit: BoxFit.scaleDown,
                              ),
                              height: MediaQuery.of(context).size.height / 13,
                              width: MediaQuery.of(context).size.width / 6,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Text(
                              'Ask a Question',
                              style: TextStyle(
                                  shadows: const <Shadow>[
                                    Shadow(
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 3.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.16),
                                    ),
                                  ],
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                  fontFamily: 'Navigo',
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          PlayQuiz(),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 40,
                right: MediaQuery.of(context).size.width / 40,
                top: MediaQuery.of(context).size.width / 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: const [
                      Color.fromRGBO(15, 231, 243, 1),
                      Color.fromRGBO(7, 211, 223, 1),
                      Color.fromRGBO(7, 211, 223, 0.5),
                    ]),
              ),
              height: MediaQuery.of(context).size.width / 2.8,
              child: Stack(
                children: [
                  Image.asset('assets/Mask Group 295.png'),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.16),
                                    blurRadius: 20.0,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: SvgPicture.asset('assets/zodiac(1).svg',
                                fit: BoxFit.scaleDown),
                            height: MediaQuery.of(context).size.height / 13,
                            width: MediaQuery.of(context).size.width / 6,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text(
                              'Check Your Zodiac\nCompatibility',
                              // overflow: TextOverflow.fade,
                              style: TextStyle(
                                  shadows: const <Shadow>[
                                    Shadow(
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 3.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.16),
                                    ),
                                  ],
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                  fontFamily: 'Navigo',
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

class Dialogebox2 extends StatefulWidget {
  const Dialogebox2({
    Key? key,
  }) : super(key: key);

  @override
  State<Dialogebox2> createState() => _DialogeboxState();
}

class _DialogeboxState extends State<Dialogebox2> {
  var list = [
    "What' is your idea of a perfect date?",
    "What is your favorite genre of music?",
    "What is your favorite pastime?",
    "What is your favorite animal?",
    "What is your favorite genre of music?",
    "What' is your idea of a perfect date?",
    "What is your favorite genre of music?",
    "What is your favorite pastime?",
    "What is your favorite animal?",
    "What is your favorite genre of music?",
    "What' is your idea of a perfect date?",
    "What is your favorite genre of music?",
    "What is your favorite pastime?",
    "What is your favorite animal?",
    "What is your favorite genre of music?",
    "What' is your idea of a perfect date?",
    "What is your favorite genre of music?",
    "What is your favorite pastime?",
    "What is your favorite animal?",
    "What is your favorite genre of music?",
    "What' is your idea of a perfect date?",
    "What is your favorite genre of music?",
    "What is your favorite pastime?",
    "What is your favorite animal?",
    "What is your favorite genre of music?",
  ];

  var selected_index;
  bool que = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SimpleDialog(
      title: SizedBox(
        height: MediaQuery.of(context).size.height / 25,
        width: MediaQuery.of(context).size.width / 1.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Ask a Question',
                style: TextStyle(
                    fontSize: w / 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Navigo'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.09,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: w / 25),
              child: GestureDetector(
                onTap: (() => Navigator.pop(context)),
                child: Icon(
                  MyFlutterApp.layer_22,
                  color: Color.fromRGBO(107, 107, 107, 1),
                  size: MediaQuery.of(context).size.width / 14,
                ),
              ),
            ),
          ],
        ),
      ),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(w / 15)),
      children: [
        Container(
          height: h * 0.7,
          width: w * 0.9,
          color: Colors.white,
          child: SingleChildScrollView(
            child: ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        // FocusScope.of(context).unfocus();
                        que = !que;
                        if (que = true) {
                          chats2.add(QuestionChat(
                              sender2: true,
                              image2: 'assets/Mask Group 227.png',
                              messageText2: Text(
                                list[index],
                                style: TextStyle(color: Colors.white),
                              )));
                          print(chats2.last.messageText2);
                        } else {}
                      });
                    },
                    child: Card(
                      margin: EdgeInsets.all(w / 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w / 20)),
                      color: Color.fromRGBO(248, 248, 248, 1),
                      child: ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(left: w / 30),
                          child: Image.asset(
                            'assets/Rectangle 3150@2x.png',
                            scale: 1.7,
                          ),
                        ),
                        title: SizedBox(
                          height: h * 0.07,
                          width: w * 0.4,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: w / 65),
                              child: Text(
                                list[index],
                                style: TextStyle(
                                    fontSize: w / 25,
                                    fontFamily: 'Navigo',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        trailing: Icon(
                          MyFlutterApp.sevente,
                          size: MediaQuery.of(context).size.width / 22,
                        ),
                        horizontalTitleGap: 2,
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class Chats {
  final String image;
  final bool sender;
  final Widget messageText;
  Chats({required this.sender, required this.image, required this.messageText});
}

class QuestionChat {
  final String image2;
  final bool sender2;
  final Widget messageText2;
  QuestionChat(
      {required this.sender2,
      required this.image2,
      required this.messageText2});
}

class QuizChat {
  final String image3;
  final bool sender3;
  final Widget messageText3;
  QuizChat(
      {required this.sender3,
      required this.image3,
      required this.messageText3});
}

class AllChats {
  final List<QuestionChat> questionchat;
  final List<Chats> normalchat;
  AllChats({required this.normalchat, required this.questionchat});
}

class PlayQuiz extends StatefulWidget {
  PlayQuiz({Key? key}) : super(key: key);

  @override
  State<PlayQuiz> createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  void add() {}

  void openDialog() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Get.dialog(
      SimpleDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w / 15)),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: w / 25, right: w / 40),
                  child: GestureDetector(
                    onTap: (() => Get.back()),
                    child: Icon(
                      MyFlutterApp.layer_22,
                      color: Color.fromRGBO(107, 107, 107, 1),
                      size: MediaQuery.of(context).size.width / 14,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: h / 2.5,
                  child: ListView.builder(
                    itemCount: questions.length,
                    itemBuilder: (context, index) {
                      final _question = questions[index];
                      return buildQuestion(_question, context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w / 25),
              child: simpleButton('Answer', context, () {
                // FocusScope.of(context).unfocus();
              }),
            )
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool que = false;
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 40,
          right: MediaQuery.of(context).size.width / 40,
          top: MediaQuery.of(context).size.width / 30),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            que = !que;
            openDialog();
          });
          if (que = true && mounted) {
            chats3.add(
              QuizChat(
                  sender3: true,
                  image3: 'assets/Mask Group 227.png',
                  messageText3: Column(
                    children: [
                      Text(
                        'What is the Full Form of RAM?',
                        style: TextStyle(color: Colors.white),
                      ),
                      chat(
                        sender: false,
                        message: Text('Random Access Memory'),
                        image: 'assets/wepik-2022213-171247 1.png',
                      ),
                      chat(
                        message: InkWell(
                          onTap: openDialog,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: openDialog,
                                  child: Icon(
                                    MyFlutterApp.add,
                                    size:
                                        MediaQuery.of(context).size.width / 25,
                                  ),
                                ),
                                Text('Add Answer'),
                              ]),
                        ),
                        image: 'assets/Mask Group 227.png',
                        sender: true,
                      )
                    ],
                  )),
            );
            print('done');
          } else {}
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: const [
                  Color.fromRGBO(255, 83, 126, 1),
                  Color.fromRGBO(255, 51, 102, 1),
                  Color.fromRGBO(255, 51, 102, 0.5),
                ]),
          ),
          height: MediaQuery.of(context).size.width / 2.8,
          child: Stack(
            children: [
              Image.asset('assets/Mask Group 295.png'),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.16),
                                blurRadius: 20.0,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: SvgPicture.asset(
                          'assets/speech-bubble.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        height: MediaQuery.of(context).size.height / 13,
                        width: MediaQuery.of(context).size.width / 6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Text(
                        'Play a Quiz',
                        style: TextStyle(
                            shadows: const <Shadow>[
                              Shadow(
                                offset: Offset(5.0, 5.0),
                                blurRadius: 3.0,
                                color: Color.fromRGBO(0, 0, 0, 0.16),
                              ),
                            ],
                            fontSize: MediaQuery.of(context).size.width / 20,
                            fontFamily: 'Navigo',
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Column buildQuestion(Question2 question, context) {
  return Column(
    children: [
      Container(
        // width: MediaQuery.of(context).size.width / 1.5,
        // height: MediaQuery.of(context).size.width / 3.4,
        child: Text(
          question.text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Container(
          child: Options2Widget(
        question: question,
        onClickOption: (option) {
          if (question.isLocked) {
            return;
          } else {}
        },
      )),
      // buildElevatedButton()
    ],
  );
}

class Options2Widget extends StatefulWidget {
  final Question2 question;
  final ValueChanged<Option2> onClickOption;
  const Options2Widget(
      {Key? key, required this.question, required this.onClickOption})
      : super(key: key);

  @override
  State<Options2Widget> createState() => _Options2WidgetState();
}

class _Options2WidgetState extends State<Options2Widget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: widget.question.options
            .map((option) => buildOption(
                  context,
                  option,
                ))
            .toList(),
      ),
    );
  }

  Widget buildOption(BuildContext context, Option2 option) {
    return GestureDetector(
      onTap: () {
        setState(() {
          option.selcted = !option.selcted;
        });
      },
      child: Container(
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(183, 183, 183, 1)),
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        height: 50,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  child: SvgPicture.asset('assets/Ellipse 1101(1).svg')),
              SizedBox(
                width: 10,
              ),
              Text(
                option.text,
                style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final questions = [
  Question2(text: 'What is the full form of RAM?', options: [
    Option2(text: 'Random Access Memory', selcted: false),
    Option2(text: 'Random Allocated Memory', selcted: false),
    Option2(text: 'ROM and Motherboard', selcted: false),
    Option2(text: 'Reach Accessible Memory', selcted: false),
  ]),
];

class Question2 {
  final String text;
  final List<Option2> options;
  bool isLocked;

  Question2({
    required this.text,
    required this.options,
    this.isLocked = false,
  });
}

class Option2 {
  final String text;
  bool selcted;

  Option2({required this.text, required this.selcted});
}
