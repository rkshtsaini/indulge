import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indulge/screens/intrest_screen.dart';
import 'package:indulge/widgets/style.dart';
import 'package:indulge/widgets/widgets.dart';

import '../dateformatHelper.dart';
import '../icons/my_flutter_app_icons.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int numPages = 15;
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  var selected_index;
  String age = "0";
  String dob = "";
  var dd = TextEditingController();
  var mm = TextEditingController();
  var yyyy = TextEditingController();
  var list = ["Man", "Woman", "Other"];
  var intrestedIN = [
    "I am interested in men",
    "I am interested in woman",
    "I am interested in both"
  ];
  List tags = [];
  List<String> itmesInterest = [
    "Picnicking",
    "Gardening",
    "Dancing",
    "Fishing",
    "Shopping",
    "New in Town",
    "Hip Hop",
    "Surfing",
    "Festivals",
    "House Party",
    "Walking",
    "Plant-based",
    "Karaoke",
    "Trivia",
    "Climbing",
    "Picnicking",
    "Gardening",
    "Dancing",
    "Fishing",
    "Shopping",
    "New in Town",
    "Hip Hop",
    "Surfing",
    "Festivals",
    "House Party",
    "Walking",
    "Plant-based",
    "Karaoke",
    "Trivia",
    "Climbing",
  ];
  List<bool> select = [];
  List<String> listHeights = [
    '4 ft ',
    '4 ft  1 inches',
    '4 ft  2 inches',
    '4 ft  3 inches',
    '4 ft  4 inches',
    '4 ft  5 inches',
    '4 ft  6 inches',
    '4 ft  7 inches	',
    '4 ft  8 inches	',
    '4 ft  9 inches	',
    '4 ft  10 inches',
    '4 ft  11 inches',
    '5 ft ',
    '5 ft  1 inches',
    '5 ft  2 inches',
    '5 ft  3 inches',
    '5 ft  4 inches',
    '5 ft  5 inches',
    '5 ft  6 inches',
    '5 ft  7 inches	',
    '5 ft  8 inches	',
    '5 ft  9 inches	',
    '5 ft  10 inches',
    '5 ft  11 inches',
    '6 ft	',
    '6 ft  1 inches	',
    '6 ft  2 inches	',
    '6 ft  3 inches	',
    '6 ft  4 inches	',
    '6 ft  5 inches	',
    '6 ft  6 inches	',
    '6 ft  7 inches	',
    '6 ft  8 inches	',
    '6 ft  9 inches	',
    '6 ft  10 inches',
    '6 ft  11 inches',
    '7 ft	',
    '7 ft  1 inches	',
    '7 ft  2 inches	',
    '7 ft  3 inches	',
    '7 ft  4 inches	',
    '7 ft  5 inches	',
    '7 ft  6 inches',
    '7 ft  7 inches',
    '7 ft  8 inches',
    '7 ft  9 inches',
    '7 ft  10 inches',
    '7 ft  11 inches',
  ];
  late String selectedItem;
  int selectedItemPosition = 0;
  List<String> Ethnicityitmes = [
    "American Indian",
    "Black African",
    "East Asian",
    "Hispanic/Latin",
    "Middle Eastern",
    "Pacific Islander",
    "South Asian",
    "White/Caucasian",
    "Other",
    "Prefer Not to Say",
  ];
  List<String> Childrenitmes = [
    "Don't have children",
    "Have children",
    "Don't want children",
    "Want children",
    "Prefer Not to Say",
  ];
  var listEducation = [
    "High School",
    "College",
    "Undergraduate",
    "Graduate",
    "Masters",
  ];
  List<String> itmesReligion = [
    "Buddhist",
    "Christian",
    "Hindu",
    "Jewish",
    "Muslim",
    "Sikh",
    "Atheist",
    "Other",
  ];
  List<String> itmesZodiac = [
    "Aries",
    "Taurus",
    "Gemini",
    "Cancer",
    "Leo",
    "Virgo",
    "Libra",
    "Scorpio",
    "Sagittarius",
    "Capricorn",
    "Aquarius",
    "Pisces",
  ];
  var listSmoke = [
    "Never",
    "Socially",
    "Regularly",
    "Planning to quit",
  ];

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: (currentPage + 1),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(97, 54, 193, 1),
                    Color.fromRGBO(7, 211, 223, 1),
                  ])),
            ),
          ),
          Expanded(
            flex: numPages - currentPage,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 239, 239, 1),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    select = List.filled(itmesInterest.length, false);
    setState(() {
      images = List.filled(
          6,
          SvgPicture.asset(
            "assets/Group 5721 (1).svg",
          ));
    });
    // select = List.filled(itmes.length, false);
  }

  List images = [];
  List<File> selected = [];
  Color bgColor = Color.fromRGBO(68, 22, 169, 1);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: w / 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: h * (0.8),
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                      children: <Widget>[
                        //1stpage
                        nameDetail(),
                        //2nd page
                        dobDetail(),
                        //3rdPage

                        identifyAS(),

                        //4thPage

                        intrestIn(),

                        //5th page

                        intrest(),
                        //6thPage
                        heightPicker(),
                        //7thPage

                        ethnicity(),
                        //8thpage

                        children(),
                        // 9thpage

                        educationQualification(),
                        // 10thapge

                        religionBelif(),
                        // 11thpage
                        zodiacSign(),

                        // 12thpage
                        drink(),

                        // 13thpage
                        smoke(),
                        //14thPage
                        bestAbout(),
                        // 15thpage
                        uploadPhoto(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: (10),
                  ),
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: SizedBox(
                        height: (50),
                        width: (300),
                        child: simpleButton(
                            currentPage == 4
                                ? 'Continue ${tags.length}/10'
                                : 'Continue ',
                            context, () {
                          currentPage != numPages - 1
                              ? pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                )
                              : {
                                  if (selected.isEmpty || selected.length < 4)
                                    {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content:
                                                  Text("Select Minimum 4")))
                                    }
                                  else
                                    {Get.to(() => Ready())}
                                };
                          switch (currentPage) {
                            case 0:
                              return bgColor = Color.fromRGBO(64, 21, 162, 1);
                            case 1:
                              return bgColor = Color.fromRGBO(61, 19, 155, 1);

                            case 2:
                              return bgColor = Color.fromRGBO(58, 18, 149, 1);
                            case 3:
                              return bgColor = Color.fromRGBO(55, 16, 143, 1);
                            case 4:
                              return bgColor = Color.fromRGBO(52, 15, 136, 1);
                            case 5:
                              return bgColor = Color.fromRGBO(49, 12, 130, 1);
                            case 6:
                              return bgColor = Color.fromRGBO(46, 11, 123, 1);
                            case 7:
                              return bgColor = Color.fromRGBO(42, 9, 116, 1);
                            case 8:
                              return bgColor = Color.fromRGBO(39, 8, 110, 1);
                            case 9:
                              return bgColor = Color.fromRGBO(36, 6, 104, 1);
                            case 10:
                              return bgColor = Color.fromRGBO(34, 5, 98, 1);
                            case 11:
                              return bgColor = Color.fromRGBO(31, 4, 92, 1);

                            case 12:
                              return bgColor = Color.fromRGBO(27, 2, 85, 1);
                            case 13:
                              return bgColor = Color.fromRGBO(24, 0, 78, 1);

                            default:
                          }
                        })),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget nameDetail() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(68, 22, 169, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12070.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: w / 20, right: w / 20, top: w / 20.0),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(68, 22, 169, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'What\'s your name?',
                          style: blackRegular22,
                        ),
                        spacer(context),
                        Column(
                          children: [
                            SizedBox(
                              width: w * 0.5,
                              child: TextFormField(
                                style: greyExtraLight30,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "first name",
                                  hintStyle: greyExtraLight30,
                                  fillColor: Colors.grey,
                                  // border: InputBorder.none,
                                  // focusedBorder: InputBorder.none,
                                  // enabledBorder: InputBorder.none,
                                  // errorBorder: InputBorder.none,
                                  // disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                            spacer(context),
                            SizedBox(
                              width: w * 0.5,
                              child: TextFormField(
                                style: greyExtraLight30,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "last name",
                                  hintStyle: greyExtraLight30,
                                  fillColor: Colors.grey,
                                  // border: InputBorder.none,
                                  // focusedBorder: InputBorder.none,
                                  // enabledBorder: InputBorder.none,
                                  // errorBorder: InputBorder.none,
                                  // disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget dobDetail() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(64, 21, 162, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12193.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(64, 21, 162, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'What’s your date of birth?',
                          style: blackRegular22,
                        ),
                        spacer(context),
                        Padding(
                          padding: EdgeInsets.all(w / 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: TextField(
                                    autofocus: true,
                                    maxLength: 2,
                                    onChanged: (val) {
                                      if (val.length == 2) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    controller: dd,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        counterText: "", hintText: "DD"),
                                    style: greyLight18,
                                    textAlign: TextAlign.center,
                                  )),
                              Text(
                                "/",
                                style: greyLight18,
                              ),
                              SizedBox(
                                  width: w / 4,
                                  child: TextField(
                                    onChanged: (val) {
                                      if (val.length == 2) {
                                        FocusScope.of(context).nextFocus();
                                      } else if (val.isEmpty) {
                                        FocusScope.of(context).previousFocus();
                                      }
                                    },
                                    maxLength: 2,
                                    autofocus: false,
                                    controller: mm,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    decoration: const InputDecoration(
                                        counterText: "", hintText: "MM"),
                                    style: greyLight18,
                                  )),
                              Text(
                                "/",
                                style: greyLight18,
                              ),
                              SizedBox(
                                  width: w / 4,
                                  child: TextField(
                                    autofocus: false,
                                    maxLength: 4,
                                    controller: yyyy,
                                    onChanged: (val) {
                                      if (val.length >= 4) {
                                        setState(() {
                                          print(dd.text +
                                              "-" +
                                              mm.text +
                                              "-" +
                                              yyyy.text);
                                          age = getDOB(dd.text +
                                              "-" +
                                              mm.text +
                                              "-" +
                                              yyyy.text);
                                          //print("Age $currentAge");
                                        });
                                        FocusScope.of(context).unfocus();
                                      } else if (val.isEmpty) {
                                        FocusScope.of(context).previousFocus();
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        counterText: "", hintText: "YYYY"),
                                    textAlign: TextAlign.center,
                                    style: greyLight18,
                                  )),
                            ],
                          ),
                        ),
                        spacer(context),
                        spacer(context),
                        Column(
                          children: [
                            Center(
                              child: Text(
                                'Your age is',
                                style: greyRegular11,
                              ),
                            ),
                            SizedBox(
                              height: w / 50,
                            ),
                            Center(
                              child: Text(
                                age,
                                style: regular25,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget identifyAS() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(61, 19, 155, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10.0),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12052.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: w / 20, left: w / 20, top: w / 20.0),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(61, 19, 155, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'How do you identify?',
                          style: blackRegular22,
                        ),
                        Center(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: w / 15, right: w / 15),
                            child: ListView.builder(
                                itemCount: list.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        //top: MediaQuery.of(context).size.width / 8,
                                        left:
                                            MediaQuery.of(context).size.width /
                                                10,
                                        bottom:
                                            MediaQuery.of(context).size.width /
                                                40,
                                        right:
                                            MediaQuery.of(context).size.width /
                                                10),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          selected_index = index;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(
                                            MediaQuery.of(context).size.width /
                                                30),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: w * 0.004,
                                                color: selected_index == index
                                                    ? const Color.fromRGBO(
                                                        146, 42, 251, 1)
                                                    : const Color(0xffC2C2C2)),
                                            borderRadius:
                                                BorderRadius.circular(w / 10)),
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(
                                          list[index].toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
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

  Widget intrestIn() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(58, 18, 149, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 6),
                              child: SvgPicture.asset('assets/Group 12083.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(58, 18, 149, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Who are you interested in ?',
                          style: blackRegular22,
                        ),
                        Center(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: w / 15, right: w / 15),
                            child: ListView.builder(
                                itemCount: intrestedIN.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        //top: MediaQuery.of(context).size.width / 8,
                                        left:
                                            MediaQuery.of(context).size.width /
                                                10,
                                        bottom:
                                            MediaQuery.of(context).size.width /
                                                40,
                                        right:
                                            MediaQuery.of(context).size.width /
                                                10),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          selected_index = index;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(
                                            MediaQuery.of(context).size.width /
                                                30),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: w * 0.004,
                                                color: selected_index == index
                                                    ? const Color.fromRGBO(
                                                        146, 42, 251, 1)
                                                    : const Color(0xffC2C2C2)),
                                            borderRadius:
                                                BorderRadius.circular(w / 10)),
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(
                                          intrestedIN[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
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

  Widget intrest() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(55, 16, 143, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 4),
                              child: SvgPicture.asset('assets/Group 12165.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(55, 16, 143, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: w / 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'What are your Interests?',
                              style: blackRegular22,
                            ),
                            spacer(context),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: w / 10),
                              child: Wrap(
                                  runSpacing: w / 35,
                                  spacing: w / 35,
                                  children: List.generate(
                                      itmesInterest.length,
                                      (index) => FilterChip(
                                          labelStyle:
                                              TextStyle(fontSize: w / 26),
                                          // avatar: Icon(Icons.person),
                                          showCheckmark: false,
                                          selectedColor: const Color.fromRGBO(
                                              97, 54, 193, 1),
                                          selected: select[index],
                                          backgroundColor: Colors.transparent,
                                          checkmarkColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: const Color.fromRGBO(
                                                      194, 194, 194, 1),
                                                  width: select[index] ? 0 : 1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      w / 25)),
                                          label: Text(
                                            itmesInterest[index],
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: select[index]
                                                    ? Colors.white
                                                    : const Color.fromRGBO(
                                                        117, 117, 117, 1)),
                                          ),
                                          onSelected: (val) {
                                            setState(() {
                                              if (tags.length < 10) {
                                                select[index] = val;
                                                if (!select[index]) {
                                                  tags.remove(
                                                      itmesInterest[index]);
                                                } else {
                                                  tags.add(
                                                      itmesInterest[index]);
                                                }
                                              } else {
                                                tags.remove(
                                                    itmesInterest[index]);
                                              }
                                              print(tags);
                                              print(select[index]);
                                            });
                                          }))),
                            ),
                          ],
                        ),
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

  Widget heightPicker() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(52, 15, 136, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12111.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(52, 15, 136, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'What’s your height?',
                          style: blackRegular22,
                        ),
                        Center(
                          child: SizedBox(
                            height: h * 0.35,
                            child: CupertinoPicker(
                              backgroundColor: Colors.transparent,
                              itemExtent: 50,
                              looping: false,
                              magnification: w * 0.0035,
                              children: listHeights
                                  .map((item) => Center(
                                        child: Text(
                                          item,
                                          style: blackRegular18,
                                        ),
                                      ))
                                  .toList(),
                              onSelectedItemChanged: (index) {
                                setState(() => selectedItemPosition = index);
                                selectedItem = listHeights[index];
                                print('Selected Item: $index');
                              },
                            ),
                          ),
                        ),
                      ],
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

  Widget ethnicity() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(49, 12, 130, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 6),
                              child: SvgPicture.asset('assets/Group 12188.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(49, 12, 130, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'What\'s your Ethnicity ?',
                          style: blackRegular22,
                        ),
                        spacer(context),
                        spacer(context),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runSpacing: w / 40,
                          spacing: w / 35,
                          children: List.generate(
                              Ethnicityitmes.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected_index = index;
                                      });
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              18,
                                      width: MediaQuery.of(context).size.width /
                                          2.7,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: selected_index == index
                                                  ? Colors.purple
                                                  : const Color.fromRGBO(
                                                      194, 194, 194, 1),
                                              width: selected_index == index
                                                  ? 1
                                                  : 2),
                                          borderRadius:
                                              BorderRadius.circular(w / 18)),
                                      child: Center(
                                        child: Text(
                                          Ethnicityitmes[index],
                                          style: TextStyle(
                                              color: selected_index == index
                                                  ? Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                      ],
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

  Widget children() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(46, 11, 123, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12103.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, right: w / 20, left: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(46, 11, 123, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'What About Children?',
                          style: blackRegular22,
                        ),
                        spacer(context),
                        spacer(context),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runSpacing: w / 15,
                          spacing: w / 21,
                          children: List.generate(
                              Childrenitmes.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected_index = index;
                                      });
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              18,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : const Color.fromRGBO(
                                                      194, 194, 194, 1),
                                              width: selected_index == index
                                                  ? 1
                                                  : 2),
                                          borderRadius:
                                              BorderRadius.circular(w / 18)),
                                      child: Center(
                                        child: Text(
                                          Childrenitmes[index],
                                          style: TextStyle(
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                      ],
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

  Widget educationQualification() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(42, 9, 116, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 6),
                              child: SvgPicture.asset('assets/Group 12064.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(42, 9, 116, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: w / 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'What is your education qualification ?',
                              textAlign: TextAlign.center,
                              style: blackRegular22,
                            ),
                            Center(
                              child: ListView.builder(
                                  itemCount: listEducation.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          selected_index = index;
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: w / 60,
                                            horizontal: w / 6),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: w * 0.004,
                                                  color: selected_index == index
                                                      ? const Color.fromRGBO(
                                                          146, 42, 251, 1)
                                                      : const Color(
                                                          0xffC2C2C2)),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      w / 10)),
                                          alignment: Alignment.center,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          height: h / 18,
                                          child: Text(
                                            listEducation[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: selected_index == index
                                                    ? const Color.fromRGBO(
                                                        74, 20, 140, 1)
                                                    : Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
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

  Widget religionBelif() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(39, 8, 110, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12119.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(39, 8, 110, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Your religious beliefs?',
                          style: blackRegular22,
                        ),
                        spacer(context),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runSpacing: w / 15,
                          spacing: w / 21,
                          children: List.generate(
                              itmesReligion.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected_index = index;
                                      });
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              18,
                                      width: MediaQuery.of(context).size.width /
                                          2.7,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      146, 42, 251, 1)
                                                  : const Color(0xffC2C2C2),
                                              width: selected_index == index
                                                  ? 1
                                                  : 2),
                                          borderRadius:
                                              BorderRadius.circular(w / 16)),
                                      child: Center(
                                        child: Text(
                                          itmesReligion[index],
                                          style: TextStyle(
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                      ],
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

  Widget zodiacSign() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(36, 6, 104, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12259.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(36, 6, 104, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'What is your zodiac signs?',
                          style: blackRegular22,
                        ),
                        spacer(context),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runSpacing: w / 40,
                          spacing: w / 35,
                          children: List.generate(
                              itmesZodiac.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected_index = index;
                                      });
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              18,
                                      width: MediaQuery.of(context).size.width /
                                          2.7,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : const Color.fromRGBO(
                                                      194, 194, 194, 1),
                                              width: selected_index == index
                                                  ? 1
                                                  : 2),
                                          borderRadius:
                                              BorderRadius.circular(w / 16)),
                                      child: Center(
                                        child: Text(
                                          itmesZodiac[index],
                                          style: TextStyle(
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      74, 20, 140, 1)
                                                  : const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                      ],
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

  Widget drink() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(34, 5, 98, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12093.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(34, 5, 98, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Do you Drink?',
                          textAlign: TextAlign.center,
                          style: blackRegular22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: w / 15, right: w / 15),
                          child: ListView.builder(
                              itemCount: listSmoke.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      //top: MediaQuery.of(context).size.width / 8,
                                      left: MediaQuery.of(context).size.width /
                                          10,
                                      bottom:
                                          MediaQuery.of(context).size.width /
                                              40,
                                      right: MediaQuery.of(context).size.width /
                                          10),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected_index = index;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(
                                          MediaQuery.of(context).size.width /
                                              35),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: w * 0.004,
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      146, 42, 251, 1)
                                                  : const Color(0xffC2C2C2)),
                                          borderRadius:
                                              BorderRadius.circular(w / 10)),
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        listSmoke[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: selected_index == index
                                                ? const Color.fromRGBO(
                                                    74, 20, 140, 1)
                                                : Colors.black,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
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

  Widget smoke() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(31, 4, 92, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12057.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(31, 4, 92, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Do you Smoke?',
                          textAlign: TextAlign.center,
                          style: blackRegular22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: w / 15, right: w / 15),
                          child: ListView.builder(
                              itemCount: listSmoke.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      //top: MediaQuery.of(context).size.width / 8,
                                      left: MediaQuery.of(context).size.width /
                                          10,
                                      bottom:
                                          MediaQuery.of(context).size.width /
                                              40,
                                      right: MediaQuery.of(context).size.width /
                                          10),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected_index = index;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(
                                          MediaQuery.of(context).size.width /
                                              35),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: w * 0.004,
                                              color: selected_index == index
                                                  ? const Color.fromRGBO(
                                                      146, 42, 251, 1)
                                                  : const Color(0xffC2C2C2)),
                                          borderRadius:
                                              BorderRadius.circular(w / 10)),
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        listSmoke[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: selected_index == index
                                                ? const Color.fromRGBO(
                                                    74, 20, 140, 1)
                                                : Colors.black,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
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

  Widget bestAbout() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(27, 2, 85, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w / 10),
                            child: SvgPicture.asset('assets/Group 12261.svg'),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(left: w / 8, top: w / 8),
                              child: SvgPicture.asset('assets/Group 12252.svg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: w / 20.0, left: w / 20, right: w / 20),
                              child: indicator(true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(27, 2, 85, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Best about your profile',
                          textAlign: TextAlign.center,
                          style: blackRegular22,
                        ),
                        spacer(context),
                        spacer(context),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(225, 212, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          width: w / 1.2,
                          height: h / 18,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.only(left: w / 20, top: w / 40),
                                suffixIcon: Icon(MyFlutterApp.back,
                                    color:
                                        const Color.fromRGBO(131, 89, 182, 1),
                                    size: w / 40),
                                hintText: 'First question',
                                hintStyle: TextStyle(
                                    fontSize: w / 25,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                                border: InputBorder.none),
                          ),
                        ),
                        spacer(context),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(225, 212, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          width: w / 1.2,
                          height: h / 18,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.only(left: w / 20, top: w / 40),
                                suffixIcon: Icon(MyFlutterApp.back,
                                    color:
                                        const Color.fromRGBO(131, 89, 182, 1),
                                    size: w / 40),
                                hintText: 'Second question',
                                hintStyle: TextStyle(
                                    fontSize: w / 25,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                                border: InputBorder.none),
                          ),
                        ),
                        spacer(context),
                        Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 1),
                                    Color.fromRGBO(217, 207, 239, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              border: Border.all(
                                color: const Color.fromRGBO(225, 212, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          width: w / 1.2,
                          height: h / 6,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: w / 20.0, top: w / 20, right: w / 17),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'What do you do in your free time?',
                                      style: TextStyle(fontSize: w / 25),
                                    ),
                                    Icon(MyFlutterApp.back,
                                        color: const Color.fromRGBO(
                                            131, 89, 182, 1),
                                        size: w / 40),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: w / 20.0, top: w / 20, right: w / 17),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: w / 27, wordSpacing: 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
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

  Widget uploadPhoto() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: h * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(24, 0, 78, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w / 8))),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: w / 20.0, left: w / 20, right: w / 20),
                          child: indicator(true),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  color: Color.fromRGBO(24, 0, 78, 1),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(w / 8),
                        bottomLeft: Radius.circular(w / 8),
                        bottomRight: Radius.circular(w / 8),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                          width: w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(w / 6),
                              bottomLeft: Radius.circular(w / 6),
                              bottomRight: Radius.circular(w / 6),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: w / 20.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Show us that Beautiful Smile!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: w / 17,
                                        fontFamily: 'Navigo'),
                                  ),
                                  Column(
                                    children: [
                                      GridView.builder(
                                          padding: EdgeInsets.all(w / 15),
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: 6,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  childAspectRatio: 3 / 2,
                                                  crossAxisSpacing: w / 80,
                                                  mainAxisSpacing: w / 10,
                                                  crossAxisCount: 2),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                                onTap: () async {
                                                  PickedFile? picker =
                                                      await ImagePicker.platform
                                                          .pickImage(
                                                              source:
                                                                  ImageSource
                                                                      .gallery);
                                                  print(images);
                                                  if (picker != null) {
                                                    setState(() {
                                                      images[index] = Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: w / 13,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      w / 20),
                                                          child: Image.file(
                                                            File(picker.path),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      );
                                                      selected.add(
                                                          File(picker.path));
                                                    });
                                                  }
                                                },
                                                child: images[index]);
                                          }),
                                      spacer2(context),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                            "*Minimum 4 pictures required",
                                            style: TextStyle(
                                                fontSize: w / 25,
                                                color: Colors.grey)),
                                      ),
                                      // spacer2(context)
                                    ],
                                  ),
                                ]),
                          )),
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
}
