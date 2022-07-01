import 'package:flutter/material.dart';
import 'package:indulge/icons/my_flutter_app_icons.dart';
import 'package:indulge/screens/support.dart';
import 'package:indulge/widgets/style.dart';
import 'package:indulge/widgets/widgets.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Color dots = Color.fromRGBO(255, 51, 102, 1);
    _showBottomSheet(BuildContext context) async {
      await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return Wrap(children: [const Bottom_Sheet()]);
          });
    }

    _showDialoge(BuildContext context) async {
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return const Dialogebox();
        },
      );
    }

    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(w / 20),
        ),
      ),
      offset: const Offset(-20, 40),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            "Report",
            style: blackRegular13,
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            "Block",
            style: blackRegular13,
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            "Filter Criteria",
            style: blackRegular13,
          ),
        ),
      ],
      initialValue: 0,
      onCanceled: () {
        print("You have canceled the menu.");
      },
      onSelected: (value) {
        print("value:$value");
        if (value == 3) {
          _showBottomSheet(context);
        } else if (value == 2) {
          _showDialoge(context);
        } else if (value == 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Support(),
              ));
        }
      },
      icon: Icon(
        MyFlutterApp.dots,
        color: dots,
        size: w / 22,
      ),
      // icon:
      // Container(
      //   height: h * 0.1,
      //   width: h * 0.1,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(w / 25),
      //     color: const Color.fromRGBO(255, 245, 250, 1),
      //   ),
      //   child: Icon(
      //     MyFlutterApp.dots,
      //     color: const Color(
      //       0xffFF3366,
      //     ),
      //     size: w / 16,
      //   ),
      // ),
    );
  }
}

class Dialogebox extends StatefulWidget {
  const Dialogebox({
    Key? key,
  }) : super(key: key);

  @override
  State<Dialogebox> createState() => _DialogeboxState();
}

class _DialogeboxState extends State<Dialogebox> {
  var list = [
    "I'm not interested in this person",
    "Profile is fake, spam or scammer",
    "Inappropriate content",
    "Underage or minor",
    "Offline behavior"
  ];

  var selected_index;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SimpleDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: w / 35),
              child: Text(
                'Block Reason',
                style: TextStyle(
                    fontSize: w / 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Navigo'),
              ),
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
                  color: Colors.black,
                  size: w / 15,
                )),
          ),
        ],
      ),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(w / 15)),
      children: [
        Container(
          height: h * 0.35,
          width: w * 0.5,
          color: Colors.white,
          child: ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: w / 60.0,
                      top: w / 60,
                      left: w / 20,
                      right: w / 20),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selected_index = index;
                      });
                    },
                    child: Container(
                      height: h * 0.055,
                      width: w * 0.001,

                      decoration: BoxDecoration(
                          border: Border.all(
                              width: w * 0.005,
                              color: selected_index == index
                                  ? const Color.fromRGBO(146, 42, 251, 1)
                                  : const Color(0xffC2C2C2)),
                          borderRadius: BorderRadius.circular(w / 10)),
                      alignment: Alignment.center,
                      // width: MediaQuery.of(context).size.width * 0.2,
                      child: Text(
                        list[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: selected_index == index
                                ? const Color.fromRGBO(74, 20, 140, 1)
                                : Colors.black,
                            fontSize: MediaQuery.of(context).size.width / 28),
                      ),
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.all(w / 38.0),
          child: simpleButton('Submit', context, () {
            Navigator.pop(context);
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Submitted")));
          }),
        )
      ],
    );
  }
}

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({Key? key}) : super(key: key);

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    dynamic min = 20.0;
    dynamic max = 25.0;
    dynamic min2 = 0.0;
    dynamic max2 = 0.0;
    String text = 'Age';
    List<String> labels = ['Woman', 'Man', 'Other'];
    String countryValue;
    String stateValue;
    String cityValue;

    return StatefulBuilder(
      builder: ((thisLowerContext, innerSetState) {
        return Container(
          // height: h * 0.85,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(w / 20),
                  topRight: Radius.circular(w / 20))),
          // height: 600,
          child: Padding(
            padding: EdgeInsets.only(
                left: w / 20, right: w / 20, bottom: w / 30, top: w / 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Filter',
                      style: TextStyle(
                          fontSize: w / 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Navigo'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Padding(
                      padding: EdgeInsets.all(w / 25),
                      child: GestureDetector(
                          onTap: (() => Navigator.pop(context)),
                          child: Icon(
                            MyFlutterApp.layer_22,
                            color: Colors.black,
                            size: w / 14,
                          )),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: w / 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Interested in',
                          style: TextStyle(
                              fontSize: w / 22,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Navigo'),
                        ),
                      ),
                    ),
                    spacer2(context),
                    ToggleSwitch(
                      borderWidth: 1,
                      borderColor: const [Color.fromRGBO(220, 220, 220, 1)],
                      fontSize: w / 24,
                      dividerMargin: 10,
                      minHeight: w / 8,
                      minWidth: w / 3.5,
                      dividerColor: const Color.fromRGBO(220, 220, 220, 1),
                      inactiveBgColor: Colors.white,
                      activeFgColor: Colors.white,
                      activeBgColor: const [
                        Color.fromRGBO(170, 213, 233, 1),
                        Color.fromRGBO(97, 54, 193, 1),
                      ],
                      cornerRadius: w / 15.0,
                      initialLabelIndex: 0,
                      totalSwitches: 3,
                      labels: labels,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                    spacer(context),
                    Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(220, 220, 220, 1)),
                            borderRadius: BorderRadius.circular(30)),
                        //height: MediaQuery.of(context).size.width/6.5,
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    color: Colors.white,
                                    child: Text(
                                      'Location',
                                      style: TextStyle(
                                          color: const Color.fromRGBO(
                                              169, 169, 169, 1),
                                          fontSize: w / 30),
                                    ))),
                            SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: SelectState(
                                  // style: TextStyle(color: Colors.red),
                                  onCountryChanged: (value) {
                                    setState(() {
                                      countryValue = value;
                                    });
                                  },
                                  onStateChanged: (value) {
                                    setState(() {
                                      stateValue = value;
                                    });
                                  },
                                  onCityChanged: (value) {
                                    setState(() {
                                      cityValue = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            // SearchLocation(
                            //   apiKey: '',
                            //   onSelected: (place) {
                            //     print(place.description);
                            //   },
                            // )
                          ],
                        )),
                    spacer(context),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: w / 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(
                                    fontSize: w / 22,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "${max2.toStringAsFixed(2)}".split(".")[0] +
                                    " Mile",
                                style: TextStyle(
                                    color: const Color.fromRGBO(7, 211, 223, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25),
                              )
                            ],
                          ),
                        ),
                        RangeSlider(
                            inactiveColor:
                                const Color.fromRGBO(231, 230, 236, 1),
                            activeColor: const Color.fromRGBO(97, 54, 193, 1),
                            min: 0,
                            max: text.contains("Age")
                                ? double.parse(55.toString())
                                : double.parse(0.toString()),
                            //divisions: 37,
                            values: RangeValues(min2, max2),
                            onChanged: (values) {
                              innerSetState(() {
                                min2 = values.start;
                                max2 = values.end;
                              });
                            }),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: w / 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    fontSize: w / 22,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "${min.toStringAsFixed(2)}".split(".")[0] +
                                    '-' +
                                    "${max.toStringAsFixed(2)}".split(".")[0],
                                style: TextStyle(
                                    color: const Color.fromRGBO(7, 211, 223, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25),
                              )
                            ],
                          ),
                        ),
                        RangeSlider(
                            inactiveColor:
                                const Color.fromRGBO(231, 230, 236, 1),
                            activeColor: const Color.fromRGBO(97, 54, 193, 1),
                            min: text.contains("Age")
                                ? double.parse(18.toString())
                                : double.parse(0.toString()),
                            max: text.contains("Age")
                                ? double.parse(55.toString())
                                : double.parse(50.toString()),
                            //divisions: 37,
                            values: RangeValues(min, max),
                            onChanged: (values) {
                              innerSetState(() {
                                min = values.start;
                                max = values.end;
                              });
                            }),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: w / 30),
                      child: simpleButton('Apply', context, () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Applied")));
                      }),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            fontSize: w / 30,
                            color: const Color.fromRGBO(255, 51, 102, 1),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
