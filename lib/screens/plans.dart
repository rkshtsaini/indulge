import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:storyswiper/storyswiper.dart';

import '../icons/my_flutter_app_icons.dart';
import '../widgets/widgets.dart';

class Plans_Screen extends StatefulWidget {
  const Plans_Screen({Key? key}) : super(key: key);

  @override
  State<Plans_Screen> createState() => _Plans_ScreenState();
}

class _Plans_ScreenState extends State<Plans_Screen> {
  List tags = [];
  List<Plan> plans = [
    Plan(
      color: Color.fromRGBO(7, 211, 223, 1),
      logo: Icon(MyFlutterApp.accept),
      title: 'Image Recognition',
    ),
    Plan(
      color: Color.fromRGBO(7, 211, 223, 1),
      logo: Icon(MyFlutterApp.accept),
      title: '15 Question Profile',
    ),
    Plan(
      color: Color.fromRGBO(7, 211, 223, 1),
      logo: Icon(MyFlutterApp.accept),
      title: 'Current Location',
    ),
    Plan(
      color: Color.fromRGBO(7, 211, 223, 1),
      logo: Icon(MyFlutterApp.accept),
      title: 'Search Functionality',
    ),
    Plan(
      color: Color.fromRGBO(7, 211, 223, 1),
      logo: Icon(MyFlutterApp.accept),
      title: 'Convo Starter Packs',
    ),
    Plan(
        color: Color.fromRGBO(7, 211, 223, 1),
        logo: Icon(MyFlutterApp.accept),
        title: 'Encoragement Message'),
    Plan(
        color: Color.fromRGBO(7, 211, 223, 1),
        logo: Icon(MyFlutterApp.accept),
        title: 'Top New picks'),
    Plan(
        color: Color.fromRGBO(255, 51, 102, 1),
        logo: Icon(MyFlutterApp.failed),
        title: 'Report Messages'),
  ];

  List icon = [];
  List color = [
    Color.fromRGBO(7, 211, 223, 1),
    Color.fromRGBO(255, 51, 102, 1),
  ];
  List image = ['assets/medal.svg', 'assets/medal(1).svg'];
  @override
  void initState() {
    icon = List.filled(plans.length, false);
    super.initState();
  }

  void changeIcon() {}
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
                    Text(
                      'Subscription Plan',
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
      ),
      body: SafeArea(
        child: Stack(children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/Mask Group 316@2x.png',
                scale: 1,
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: w / 2.0),
                child: SvgPicture.asset(
                  'assets/Group 12557.svg',
                  height: w / 2.5,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: h / 15, left: w / 20, right: w / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'CHOOSE YOUR PLAN',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: w / 16, fontWeight: FontWeight.w500),
                ),
                spacer2(context),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: w / 23,
                      color: const Color.fromRGBO(44, 44, 44, 1)),
                ),
                Container(
                  height: h * 0.68,
                  width: w,
                  color: Colors.transparent,
                  child: StorySwiper.builder(
                    itemCount: 2,
                    aspectRatio: 3 / 5,
                    depthFactor: 0.1,
                    dx: 70,
                    dy: 30,
                    paddingStart: 35,
                    verticalPadding: 65,
                    visiblePageCount: 4,
                    widgetBuilder: (index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: color[index],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/Group 12370.svg',
                                      height: h / 3,
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: ListTile(
                                          title: Text(
                                            'PREMIUM',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          subtitle: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/Path 67835.svg'),
                                              Text(
                                                '49 ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                '/Month',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          trailing:
                                              SvgPicture.asset(image[index]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 9,
                                        child: ListView.builder(
                                          itemCount: plans.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15, top: 2),
                                              child: InkWell(
                                                onTap: () => changeIcon,
                                                // setState(() {
                                                //   icon[index] = !icon[index];
                                                //   print(icon[index]);
                                                // });

                                                child: Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          child: Text(
                                                              plans[index]
                                                                  .title)),
                                                      icon[index]
                                                          ? Icon(
                                                              MyFlutterApp
                                                                  .accept,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      7,
                                                                      211,
                                                                      223,
                                                                      1),
                                                            )
                                                          : Icon(
                                                              MyFlutterApp
                                                                  .failed,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      51,
                                                                      102,
                                                                      1),
                                                            ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 30,
                                              right: 30,
                                              bottom: 15,
                                              top: 15),
                                          child: simpleButto3(
                                              'Activate Now', context, () {
                                            Navigator.pop(context);
                                            print('pop');
                                          }, color[index]),
                                        ),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Plan {
  String title;
  late Color color;
  Icon logo;

  Plan({required this.color, required this.logo, required this.title});
}
