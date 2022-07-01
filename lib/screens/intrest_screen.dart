import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indulge/icons/my_flutter_app_icons.dart';
import 'package:indulge/screens/home_screen.dart';

import '../widgets/widgets.dart';

// ignore: must_be_immutable
// class IntrestedIn extends StatefulWidget {
//   String text = "Continue";
//   IntrestedIn({
//     Key? key,
//     String? text,
//   }) : super(key: key);

//   @override
//   State<IntrestedIn> createState() => _IntrestedInState();
// }

// class _IntrestedInState extends State<IntrestedIn> {
//   var list = [
//     "I am interested in men",
//     "I am interested in woman",
//     "I am interested in both"
//   ];
//   var selected_index;
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(58, 18, 149, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(58, 18, 149, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(58, 18, 149, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Who are you interested in ?',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 Center(
//                                   child: Padding(
//                                     padding: EdgeInsets.only(
//                                         left: w / 15, right: w / 15),
//                                     child: ListView.builder(
//                                         itemCount: list.length,
//                                         shrinkWrap: true,
//                                         physics:
//                                             const NeverScrollableScrollPhysics(),
//                                         itemBuilder: (context, index) {
//                                           return Padding(
//                                             padding: EdgeInsets.only(
//                                                 //top: MediaQuery.of(context).size.width / 8,
//                                                 left: MediaQuery.of(context)
//                                                         .size
//                                                         .width /
//                                                     10,
//                                                 bottom: MediaQuery.of(context)
//                                                         .size
//                                                         .width /
//                                                     40,
//                                                 right: MediaQuery.of(context)
//                                                         .size
//                                                         .width /
//                                                     10),
//                                             child: InkWell(
//                                               onTap: () {
//                                                 setState(() {
//                                                   selected_index = index;
//                                                 });
//                                               },
//                                               child: Container(
//                                                 padding: EdgeInsets.all(
//                                                     MediaQuery.of(context)
//                                                             .size
//                                                             .width /
//                                                         30),
//                                                 decoration: BoxDecoration(
//                                                     border: Border.all(
//                                                         width: w * 0.004,
//                                                         color: selected_index ==
//                                                                 index
//                                                             ? const Color
//                                                                     .fromRGBO(
//                                                                 146, 42, 251, 1)
//                                                             : const Color(
//                                                                 0xffC2C2C2)),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             w / 10)),
//                                                 alignment: Alignment.center,
//                                                 width: MediaQuery.of(context)
//                                                         .size
//                                                         .width /
//                                                     2,
//                                                 child: Text(
//                                                   list[index],
//                                                   style: TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                       color: selected_index ==
//                                                               index
//                                                           ? const Color
//                                                                   .fromRGBO(
//                                                               74, 20, 140, 1)
//                                                           : Colors.black,
//                                                       fontSize:
//                                                           MediaQuery.of(context)
//                                                                   .size
//                                                                   .width /
//                                                               22),
//                                                 ),
//                                               ),
//                                             ),
//                                           );
//                                         }),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 6,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.55,
//                   top: h / 20,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.56,
//                 child: SvgPicture.asset(
//                   'assets/Group 12083.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: w / 8, right: w / 8, bottom: w / 8),
//                     child: simpleButton('Continue', context, () {
//                       Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const FilterDataGrid(),
//                           ));
//                     }),
//                   )),
//             ],
//           ),
//         ));
//   }
// }

// class FilterDataGrid extends StatefulWidget {
//   const FilterDataGrid({Key? key}) : super(key: key);

//   @override
//   State<FilterDataGrid> createState() => _FilterDataGridState();
// }

// class _FilterDataGridState extends State<FilterDataGrid> {
//   List tags = [];
//   List<String> itmes = [
//     "Picnicking",
//     "Gardening",
//     "Dancing",
//     "Fishing",
//     "Shopping",
//     "New in Town",
//     "Hip Hop",
//     "Surfing",
//     "Festivals",
//     "House Party",
//     "Walking",
//     "Plant-based",
//     "Karaoke",
//     "Trivia",
//     "Climbing",
//   ];
//   List<bool> select = [];
//   //List<bool> added = [];

//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     select = List.filled(itmes.length, false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(55, 16, 143, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 6,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.5,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(55, 16, 143, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(55, 16, 143, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: SingleChildScrollView(
//                               child: Padding(
//                                 padding:
//                                     EdgeInsets.symmetric(vertical: w / 12.0),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'What is your Interests?',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: w / 17,
//                                           fontFamily: 'Navigo'),
//                                     ),
//                                     spacer(context),
//                                     Padding(
//                                       padding: EdgeInsets.only(
//                                           left: w * 0.05, right: w * 0.01),
//                                       child: Wrap(
//                                           runSpacing: w / 35,
//                                           spacing: w / 35,
//                                           children: List.generate(
//                                               itmes.length,
//                                               (index) => FilterChip(
//                                                   labelStyle: TextStyle(
//                                                       fontSize: w / 26),
//                                                   // avatar: Icon(Icons.person),
//                                                   showCheckmark: false,
//                                                   selectedColor:
//                                                       const Color.fromRGBO(
//                                                           97, 54, 193, 1),
//                                                   selected: select[index],
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   checkmarkColor: Colors.white,
//                                                   shape: RoundedRectangleBorder(
//                                                       side: BorderSide(
//                                                           color: const Color
//                                                                   .fromRGBO(
//                                                               194, 194, 194, 1),
//                                                           width: select[index]
//                                                               ? 0
//                                                               : 1),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               w / 25)),
//                                                   label: Text(
//                                                     itmes[index],
//                                                     style: TextStyle(
//                                                         color: select[index]
//                                                             ? Colors.white
//                                                             : const Color
//                                                                     .fromRGBO(
//                                                                 194,
//                                                                 194,
//                                                                 194,
//                                                                 1)),
//                                                   ),
//                                                   onSelected: (val) {
//                                                     setState(() {
//                                                       if (tags.length < 10) {
//                                                         select[index] = val;
//                                                         if (!select[index]) {
//                                                           tags.remove(
//                                                               itmes[index]);
//                                                         } else {
//                                                           tags.add(
//                                                               itmes[index]);
//                                                         }
//                                                       } else {
//                                                         tags.remove(
//                                                             itmes[index]);
//                                                       }
//                                                       print(tags);
//                                                       print(select[index]);
//                                                     });
//                                                   }))),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 6,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 7,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.5,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.5,
//                 child: SvgPicture.asset(
//                   'assets/Group 12165.svg',
//                   height: w / 3.5,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                       padding: EdgeInsets.only(
//                           left: w / 8, right: w / 8, bottom: w / 13),
//                       child: simpleButton('Continue ${tags.length}/10', context,
//                           () {
//                         Navigator.push(
//                             context,
//                             CupertinoPageRoute(
//                                 builder: (_) => const HeightPicker()));
//                       }))),
//             ],
//           ),
//         ));
//   }
// }

// class HeightPicker extends StatefulWidget {
//   const HeightPicker({Key? key}) : super(key: key);

//   @override
//   State<HeightPicker> createState() => _HeightPickerState();
// }

// class _HeightPickerState extends State<HeightPicker> {
//   List<String> listHeights = [
//     '5 ft ',
//     '5 ft  1 inches',
//     '5 ft  2 inches',
//     '5 ft  3 inches',
//     '5 ft  4 inches',
//     '5 ft  5 inches',
//     '5 ft  6 inches',
//     '5 ft  7 inches	',
//     '5 ft  8 inches	',
//     '5 ft  9 inches	',
//     '5 ft  10 inches',
//     '5 ft  11 inches',
//     '6 ft	',
//     '6 ft  1 inches	',
//     '6 ft  2 inches	',
//     '6 ft  3 inches	',
//     '6 ft  4 inches	',
//     '6 ft  5 inches	',
//     '6 ft  6 inches	',
//     '6 ft  7 inches	',
//     '6 ft  8 inches	',
//     '6 ft  9 inches	',
//     '6 ft  10 inches',
//     '6 ft  11 inches',
//     '7 ft	',
//     '7 ft  1 inches	',
//     '7 ft  2 inches	',
//     '7 ft  3 inches	',
//     '7 ft  4 inches	',
//     '7 ft  5 inches	',
//     '7 ft  6 inches',
//     '7 ft  7 inches',
//     '7 ft  8 inches',
//     '7 ft  9 inches',
//     '7 ft  10 inches',
//     '7 ft  11 inches',
//   ];
//   late String selectedItem;
//   int selectedItemPosition = 0;

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(52, 15, 136, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(52, 15, 136, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(52, 15, 136, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'What’s your height?',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 16,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 Center(
//                                   child: SizedBox(
//                                     height: h * 0.35,
//                                     child: CupertinoPicker(
//                                       backgroundColor: Colors.transparent,
//                                       itemExtent: 50,
//                                       looping: false,
//                                       magnification: w * 0.0035,
//                                       children: listHeights
//                                           .map((item) => Center(
//                                                 child: Text(
//                                                   item,
//                                                   style: TextStyle(
//                                                       fontSize: w / 22,
//                                                       fontFamily: 'Navigo'),
//                                                 ),
//                                               ))
//                                           .toList(),
//                                       onSelectedItemChanged: (index) {
//                                         setState(
//                                             () => selectedItemPosition = index);
//                                         selectedItem = listHeights[index];
//                                         print('Selected Item: $index');
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 5,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 5,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.53,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.53,
//                 child: SvgPicture.asset(
//                   'assets/Group 12111.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: w / 8, right: w / 8, bottom: w / 7),
//                     child: simpleButton('Continue', context, () {
//                       Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) =>
//                                 const EthnicityFilter(text: 'Update'),
//                           ));
//                     }),
//                   )),
//             ],
//           ),
//         ));
//   }
// }

// class EthnicityFilter extends StatefulWidget {
//   const EthnicityFilter({Key? key, required String text}) : super(key: key);

//   @override
//   State<EthnicityFilter> createState() => _EthnicityFilterState();
// }

// class _EthnicityFilterState extends State<EthnicityFilter> {
//   List tags = [];
//   List<String> itmes = [
//     "American Indian",
//     "Black African",
//     "East Asian",
//     "Hispanic/Latin",
//     "Middle Eastern",
//     "Pacific Islander",
//     "South Asian",
//     "White/Caucasian",
//     "Other",
//     "Prefer Not to Say",
//   ];
//   List<bool> select = [];
//   var selected_index;

//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     select = List.filled(itmes.length, false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(49, 12, 130, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(49, 12, 130, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(49, 12, 130, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'What\'s your Ethnicity ?',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 spacer(context),
//                                 Wrap(
//                                   alignment: WrapAlignment.spaceBetween,
//                                   runSpacing: w / 40,
//                                   spacing: w / 35,
//                                   children: List.generate(
//                                       itmes.length,
//                                       (index) => InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 selected_index = index;
//                                               });
//                                             },
//                                             child: Container(
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .height /
//                                                   22,
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.7,
//                                               decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       color: selected_index ==
//                                                               index
//                                                           ? Colors.purple
//                                                           : const Color
//                                                                   .fromRGBO(
//                                                               194, 194, 194, 1),
//                                                       width: selected_index ==
//                                                               index
//                                                           ? 1
//                                                           : 2),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           w / 20)),
//                                               child: Center(
//                                                 child: Text(
//                                                   itmes[index],
//                                                   style: TextStyle(
//                                                       color:
//                                                           const Color.fromRGBO(
//                                                               0, 0, 0, 1),
//                                                       fontSize: w / 25,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                 ),
//                                               ),
//                                             ),
//                                           )),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 6,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 4,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.53,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.53,
//                 child: SvgPicture.asset(
//                   'assets/Group 12188.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                       padding: EdgeInsets.only(
//                           left: w / 8, right: w / 8, bottom: w / 8),
//                       child: simpleButton('Continue', context, () {
//                         Navigator.push(
//                             context,
//                             CupertinoPageRoute(
//                                 builder: (_) => const Children()));
//                       }))),
//             ],
//           ),
//         ));
//   }
// }

// class Children extends StatefulWidget {
//   const Children({Key? key}) : super(key: key);

//   @override
//   State<Children> createState() => _ChildrenState();
// }

// class _ChildrenState extends State<Children> {
//   List tags = [];
//   List<String> itmes = [
//     "Don't have children",
//     "Have children",
//     "Don't want children",
//     "Want children",
//     "Prefer Not to Say",
//   ];
//   List<bool> select = [];
//   var selected_index;

//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     select = List.filled(itmes.length, false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(46, 11, 123, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(46, 11, 123, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(46, 11, 123, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'What About Children?',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 spacer(context),
//                                 spacer(context),
//                                 Wrap(
//                                   alignment: WrapAlignment.spaceBetween,
//                                   runSpacing: w / 15,
//                                   spacing: w / 21,
//                                   children: List.generate(
//                                       itmes.length,
//                                       (index) => InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 selected_index = index;
//                                               });
//                                             },
//                                             child: Container(
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .height /
//                                                   19,
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.5,
//                                               decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       color: selected_index ==
//                                                               index
//                                                           ? Colors.purple
//                                                           : const Color
//                                                                   .fromRGBO(
//                                                               194, 194, 194, 1),
//                                                       width: selected_index ==
//                                                               index
//                                                           ? 1
//                                                           : 2),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           w / 20)),
//                                               child: Center(
//                                                 child: Text(
//                                                   itmes[index],
//                                                   style: TextStyle(
//                                                       color:
//                                                           const Color.fromRGBO(
//                                                               0, 0, 0, 1),
//                                                       fontSize: w / 25,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                 ),
//                                               ),
//                                             ),
//                                           )),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 7,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 3,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.53,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.53,
//                 child: SvgPicture.asset(
//                   'assets/Group 12103.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                       padding: EdgeInsets.only(
//                           left: w / 8, right: w / 8, bottom: w / 7),
//                       child: simpleButton('Continue', context, () {
//                         Navigator.push(context,
//                             CupertinoPageRoute(builder: (_) => Education()));
//                       }))),
//             ],
//           ),
//         ));
//   }
// }

// class Education extends StatefulWidget {
//   String text = "Continue";
//   Education({
//     Key? key,
//     String? text,
//   }) : super(key: key);

//   @override
//   State<Education> createState() => _EducationState();
// }

// class _EducationState extends State<Education> {
//   var list = [
//     "High School",
//     "College",
//     "Undergraduate",
//     "Graduate",
//     "Masters",
//   ];
//   var selected_index;
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(42, 9, 116, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 6.4,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.3699,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(42, 9, 116, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(42, 9, 116, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: SingleChildScrollView(
//                               child: Padding(
//                                 padding: EdgeInsets.symmetric(vertical: w / 12),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'What is your education qualification ?',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: w / 17,
//                                           fontFamily: 'Navigo'),
//                                     ),
//                                     Center(
//                                       child: ListView.builder(
//                                           itemCount: list.length,
//                                           shrinkWrap: true,
//                                           physics:
//                                               const NeverScrollableScrollPhysics(),
//                                           itemBuilder: (context, index) {
//                                             return InkWell(
//                                               onTap: () {
//                                                 setState(() {
//                                                   selected_index = index;
//                                                 });
//                                               },
//                                               child: Padding(
//                                                 padding: EdgeInsets.symmetric(
//                                                     vertical: w / 60,
//                                                     horizontal: w / 6),
//                                                 child: Container(
//                                                   decoration: BoxDecoration(
//                                                       border: Border.all(
//                                                           width: w * 0.004,
//                                                           color: selected_index ==
//                                                                   index
//                                                               ? const Color
//                                                                       .fromRGBO(
//                                                                   146,
//                                                                   42,
//                                                                   251,
//                                                                   1)
//                                                               : const Color(
//                                                                   0xffC2C2C2)),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               w / 10)),
//                                                   alignment: Alignment.center,
//                                                   width: MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       2,
//                                                   height: h / 18,
//                                                   child: Text(
//                                                     list[index],
//                                                     style: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.w500,
//                                                         color: selected_index ==
//                                                                 index
//                                                             ? const Color
//                                                                     .fromRGBO(
//                                                                 74, 20, 140, 1)
//                                                             : Colors.black,
//                                                         fontSize: MediaQuery.of(
//                                                                     context)
//                                                                 .size
//                                                                 .width /
//                                                             25),
//                                                   ),
//                                                 ),
//                                               ),
//                                             );
//                                           }),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 7,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 4,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.51,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.51,
//                 child: SvgPicture.asset(
//                   'assets/Group 12064.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: w / 8, right: w / 8, bottom: w / 16),
//                     child: simpleButton('Continue', context, () {
//                       Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const Religion(),
//                           ));
//                     }),
//                   )),
//             ],
//           ),
//         ));
//   }
// }

// class Religion extends StatefulWidget {
//   const Religion({Key? key, String? text}) : super(key: key);

//   @override
//   State<Religion> createState() => _ReligionState();
// }

// class _ReligionState extends State<Religion> {
//   List<String> itmes = [
//     "Buddhist",
//     "Christian",
//     "Hindu",
//     "Jewish",
//     "Muslim",
//     "Sikh",
//     "Atheist",
//     "Other",
//   ];

//   var selected_index;

//   @override
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(39, 8, 110, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(39, 8, 110, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(39, 8, 110, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Your religious beliefs?',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 spacer(context),
//                                 Wrap(
//                                   alignment: WrapAlignment.spaceBetween,
//                                   runSpacing: w / 15,
//                                   spacing: w / 21,
//                                   children: List.generate(
//                                       itmes.length,
//                                       (index) => InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 selected_index = index;
//                                               });
//                                             },
//                                             child: Container(
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .height /
//                                                   22,
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.7,
//                                               decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       color: selected_index ==
//                                                               index
//                                                           ? Colors.purple
//                                                           : const Color
//                                                                   .fromRGBO(
//                                                               194, 194, 194, 1),
//                                                       width: selected_index ==
//                                                               index
//                                                           ? 1
//                                                           : 2),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           w / 20)),
//                                               child: Center(
//                                                 child: Text(
//                                                   itmes[index],
//                                                   style: TextStyle(
//                                                       color:
//                                                           const Color.fromRGBO(
//                                                               0, 0, 0, 1),
//                                                       fontSize: w / 25,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                 ),
//                                               ),
//                                             ),
//                                           )),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 4,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.53,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.53,
//                 child: SvgPicture.asset(
//                   'assets/Group 12119.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                       padding: EdgeInsets.only(
//                           left: w / 8, right: w / 8, bottom: w / 7),
//                       child: simpleButton('Continue', context, () {
//                         Navigator.push(context,
//                             CupertinoPageRoute(builder: (_) => const Zodiac()));
//                       }))),
//             ],
//           ),
//         ));
//   }
// }

// class Zodiac extends StatefulWidget {
//   const Zodiac({Key? key, String? text}) : super(key: key);

//   @override
//   State<Zodiac> createState() => _ZodiacState();
// }

// class _ZodiacState extends State<Zodiac> {
//   List<String> itmes = [
//     "Aries",
//     "Taurus",
//     "Gemini",
//     "Cancer",
//     "Leo",
//     "Virgo",
//     "Libra",
//     "Scorpio",
//     "Sagittarius",
//     "Capricorn",
//     "Aquarius",
//     "Pisces",
//   ];

//   var selected_index;

//   @override
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(36, 6, 104, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 6,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.5,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(36, 6, 104, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(36, 6, 104, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'What is your zodiac signs?',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 spacer(context),
//                                 Wrap(
//                                   alignment: WrapAlignment.spaceBetween,
//                                   runSpacing: w / 40,
//                                   spacing: w / 35,
//                                   children: List.generate(
//                                       itmes.length,
//                                       (index) => InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 selected_index = index;
//                                               });
//                                             },
//                                             child: Container(
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .height /
//                                                   22,
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.7,
//                                               decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       color: selected_index ==
//                                                               index
//                                                           ? Colors.purple
//                                                           : const Color
//                                                                   .fromRGBO(
//                                                               194, 194, 194, 1),
//                                                       width: selected_index ==
//                                                               index
//                                                           ? 1
//                                                           : 2),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           w / 20)),
//                                               child: Center(
//                                                 child: Text(
//                                                   itmes[index],
//                                                   style: TextStyle(
//                                                       color:
//                                                           const Color.fromRGBO(
//                                                               0, 0, 0, 1),
//                                                       fontSize: w / 25,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                 ),
//                                               ),
//                                             ),
//                                           )),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 3,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.5,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.5,
//                 child: SvgPicture.asset(
//                   'assets/Group 12259.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                       padding: EdgeInsets.only(
//                           left: w / 8, right: w / 8, bottom: w / 12),
//                       child: simpleButton('Continue', context, () {
//                         Navigator.push(context,
//                             CupertinoPageRoute(builder: (_) => const Drink()));
//                       }))),
//             ],
//           ),
//         ));
//   }
// }

// class Drink extends StatefulWidget {
//   const Drink({
//     Key? key,
//     String? text,
//   }) : super(key: key);

//   @override
//   State<Drink> createState() => _DrinkState();
// }

// class _DrinkState extends State<Drink> {
//   var list = [
//     "Never",
//     "Socially",
//     "Regularly",
//     "Planning to quit",
//   ];
//   var selected_index;
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(34, 5, 98, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(34, 5, 98, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(34, 5, 98, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Do you Drink?',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                       left: w / 15, right: w / 15),
//                                   child: ListView.builder(
//                                       itemCount: list.length,
//                                       shrinkWrap: true,
//                                       itemBuilder: (context, index) {
//                                         return Padding(
//                                           padding: EdgeInsets.only(
//                                               //top: MediaQuery.of(context).size.width / 8,
//                                               left: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   10,
//                                               bottom: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   60,
//                                               right: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   10),
//                                           child: InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 selected_index = index;
//                                               });
//                                             },
//                                             child: Container(
//                                               padding: EdgeInsets.all(
//                                                   MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       35),
//                                               decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       width: w * 0.004,
//                                                       color: selected_index ==
//                                                               index
//                                                           ? const Color
//                                                                   .fromRGBO(
//                                                               146, 42, 251, 1)
//                                                           : const Color(
//                                                               0xffC2C2C2)),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           w / 10)),
//                                               alignment: Alignment.center,
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2,
//                                               child: Text(
//                                                 list[index],
//                                                 style: TextStyle(
//                                                     fontWeight: FontWeight.w500,
//                                                     color: selected_index ==
//                                                             index
//                                                         ? const Color.fromRGBO(
//                                                             74, 20, 140, 1)
//                                                         : Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             22),
//                                               ),
//                                             ),
//                                           ),
//                                         );
//                                       }),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 2,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.53,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.53,
//                 child: SvgPicture.asset(
//                   'assets/Group 12093.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: w / 8, right: w / 8, bottom: w / 7),
//                     child: simpleButton('Continue', context, () {
//                       Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const Smoke(),
//                           ));
//                     }),
//                   )),
//             ],
//           ),
//         ));
//   }
// }

// class Smoke extends StatefulWidget {
//   const Smoke({
//     Key? key,
//     String? text,
//   }) : super(key: key);

//   @override
//   State<Smoke> createState() => _SmokeState();
// }

// class _SmokeState extends State<Smoke> {
//   var list = [
//     "Never",
//     "Socially",
//     "Regularly",
//     "Planning to quit",
//   ];
//   var selected_index;
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(31, 4, 92, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 5,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.6,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(31, 4, 92, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(31, 4, 92, 1),
//                           ),
//                           child: Container(
//                             width: w,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(w / 6),
//                                 bottomLeft: Radius.circular(w / 6),
//                                 bottomRight: Radius.circular(w / 6),
//                               ),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Do you Smoke?',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: w / 17,
//                                       fontFamily: 'Navigo'),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                       left: w / 15, right: w / 15),
//                                   child: ListView.builder(
//                                       itemCount: list.length,
//                                       shrinkWrap: true,
//                                       physics:
//                                           const NeverScrollableScrollPhysics(),
//                                       itemBuilder: (context, index) {
//                                         return Padding(
//                                           padding: EdgeInsets.only(
//                                               //top: MediaQuery.of(context).size.width / 8,
//                                               left: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   10,
//                                               bottom: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   60,
//                                               right: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   10),
//                                           child: InkWell(
//                                             onTap: () {
//                                               setState(() {
//                                                 selected_index = index;
//                                               });
//                                             },
//                                             child: Container(
//                                               padding: EdgeInsets.all(
//                                                   MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       35),
//                                               decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       width: w * 0.004,
//                                                       color: selected_index ==
//                                                               index
//                                                           ? const Color
//                                                                   .fromRGBO(
//                                                               146, 42, 251, 1)
//                                                           : const Color(
//                                                               0xffC2C2C2)),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           w / 10)),
//                                               alignment: Alignment.center,
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2,
//                                               child: Text(
//                                                 list[index],
//                                                 style: TextStyle(
//                                                     fontWeight: FontWeight.w500,
//                                                     color: selected_index ==
//                                                             index
//                                                         ? const Color.fromRGBO(
//                                                             74, 20, 140, 1)
//                                                         : Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             22),
//                                               ),
//                                             ),
//                                           ),
//                                         );
//                                       }),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 11,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 9,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 2,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.53,
//                   top: h / 16,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.53,
//                 child: SvgPicture.asset(
//                   'assets/Group 12057.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: w / 8, right: w / 8, bottom: w / 7),
//                     child: simpleButton('Continue', context, () {
//                       Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const BestAbout(),
//                           ));
//                     }),
//                   )),
//             ],
//           ),
//         ));
//   }
// }

// class BestAbout extends StatefulWidget {
//   const BestAbout({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<BestAbout> createState() => _BestAboutState();
// }

// class _BestAboutState extends State<BestAbout> {
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(27, 2, 85, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: h / 6,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.5,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(27, 2, 85, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(27, 2, 85, 1),
//                           ),
//                           child: Container(
//                               width: w,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(w / 6),
//                                   bottomLeft: Radius.circular(w / 6),
//                                   bottomRight: Radius.circular(w / 6),
//                                 ),
//                               ),
//                               child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Best about your profile',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: w / 17,
//                                           fontFamily: 'Navigo'),
//                                     ),
//                                     spacer(context),
//                                     spacer(context),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                           border: Border.all(
//                                             color: const Color.fromRGBO(
//                                                 225, 212, 255, 1),
//                                           ),
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       width: w / 1.2,
//                                       height: h / 18,
//                                       child: TextFormField(
//                                         textAlign: TextAlign.start,
//                                         decoration: InputDecoration(
//                                             isDense: true,
//                                             contentPadding: EdgeInsets.only(
//                                                 left: w / 20, top: w / 40),
//                                             suffixIcon: Icon(MyFlutterApp.back,
//                                                 color: const Color.fromRGBO(
//                                                     131, 89, 182, 1),
//                                                 size: w / 40),
//                                             hintText: 'First question',
//                                             hintStyle: TextStyle(
//                                                 fontSize: w / 25,
//                                                 color: const Color.fromRGBO(
//                                                     0, 0, 0, 1)),
//                                             border: InputBorder.none),
//                                       ),
//                                     ),
//                                     spacer(context),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                           border: Border.all(
//                                             color: const Color.fromRGBO(
//                                                 225, 212, 255, 1),
//                                           ),
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       width: w / 1.2,
//                                       height: h / 18,
//                                       child: TextFormField(
//                                         textAlign: TextAlign.start,
//                                         decoration: InputDecoration(
//                                             isDense: true,
//                                             contentPadding: EdgeInsets.only(
//                                                 left: w / 20, top: w / 40),
//                                             suffixIcon: Icon(MyFlutterApp.back,
//                                                 color: const Color.fromRGBO(
//                                                     131, 89, 182, 1),
//                                                 size: w / 40),
//                                             hintText: 'Second question',
//                                             hintStyle: TextStyle(
//                                                 fontSize: w / 25,
//                                                 color: const Color.fromRGBO(
//                                                     0, 0, 0, 1)),
//                                             border: InputBorder.none),
//                                       ),
//                                     ),
//                                     spacer(context),
//                                     Container(
//                                         decoration: BoxDecoration(
//                                             gradient: const LinearGradient(
//                                                 colors: [
//                                                   Color.fromRGBO(
//                                                       255, 255, 255, 1),
//                                                   Color.fromRGBO(
//                                                       217, 207, 239, 1)
//                                                 ],
//                                                 begin: Alignment.topCenter,
//                                                 end: Alignment.bottomCenter),
//                                             border: Border.all(
//                                               color: const Color.fromRGBO(
//                                                   225, 212, 255, 1),
//                                             ),
//                                             borderRadius:
//                                                 BorderRadius.circular(5)),
//                                         width: w / 1.2,
//                                         height: h / 6,
//                                         child: Column(
//                                           children: [
//                                             Padding(
//                                               padding: EdgeInsets.only(
//                                                   left: w / 20.0,
//                                                   top: w / 20,
//                                                   right: w / 17),
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     'What do you do in your free time?',
//                                                     style: TextStyle(
//                                                         fontSize: w / 25),
//                                                   ),
//                                                   Icon(MyFlutterApp.back,
//                                                       color:
//                                                           const Color.fromRGBO(
//                                                               131, 89, 182, 1),
//                                                       size: w / 40),
//                                                 ],
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: EdgeInsets.only(
//                                                   left: w / 20.0,
//                                                   top: w / 20,
//                                                   right: w / 17),
//                                               child: Text(
//                                                 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',
//                                                 maxLines: 2,
//                                                 style: TextStyle(
//                                                     fontSize: w / 27,
//                                                     wordSpacing: 1),
//                                               ),
//                                             )
//                                           ],
//                                         )),
//                                   ])),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 12,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 10,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 2,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: h / 1.5,
//                   top: h / 20,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: w / 13),
//                     child: SvgPicture.asset(
//                       'assets/Group 12261.svg',
//                       height: w / 1.63,
//                     ),
//                   )),
//               Positioned(
//                 left: w / 5,
//                 right: w / 7,
//                 bottom: h / 1.5,
//                 child: SvgPicture.asset(
//                   'assets/Group 12111.svg',
//                   height: w / 2.8,
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: w / 8, right: w / 8, bottom: w / 8),
//                     child: simpleButton('Continue', context, () {
//                       Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const ImagesScrn(),
//                           ));
//                     }),
//                   )),
//             ],
//           ),
//         ));
//   }
// }

// class ImagesScrn extends StatefulWidget {
//   const ImagesScrn({Key? key}) : super(key: key);

//   @override
//   State<ImagesScrn> createState() => _ImagesScrnState();
// }

// class _ImagesScrnState extends State<ImagesScrn> {
//   List images = [];
//   List<File> selected = [];

//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       images = List.filled(
//           6,
//           SvgPicture.asset(
//             "assets/Group 5721 (1).svg",
//           ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: const Color.fromRGBO(24, 0, 78, 1),
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Positioned(
//                 bottom: h / 8,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   height: h / 1.1,
//                   width: w,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           width: w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(24, 0, 78, 1),
//                                 borderRadius: BorderRadius.only(
//                                     bottomRight: Radius.circular(w / 6))),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(24, 0, 78, 1),
//                           ),
//                           child: SingleChildScrollView(
//                             child: Container(
//                                 width: w,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(w / 6),
//                                     bottomLeft: Radius.circular(w / 6),
//                                     bottomRight: Radius.circular(w / 6),
//                                   ),
//                                 ),
//                                 child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     // crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         'Show us that Beautiful Smile!',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: w / 17,
//                                             fontFamily: 'Navigo'),
//                                       ),
//                                       Column(
//                                         children: [
//                                           GridView.builder(
//                                               padding: EdgeInsets.all(w / 15),
//                                               shrinkWrap: true,
//                                               physics:
//                                                   const NeverScrollableScrollPhysics(),
//                                               itemCount: 6,
//                                               gridDelegate:
//                                                   SliverGridDelegateWithFixedCrossAxisCount(
//                                                       childAspectRatio: 3 / 2,
//                                                       crossAxisSpacing: w / 80,
//                                                       mainAxisSpacing: w / 10,
//                                                       crossAxisCount: 2),
//                                               itemBuilder: (context, index) {
//                                                 return InkWell(
//                                                     onTap: () async {
//                                                       PickedFile? picker =
//                                                           await ImagePicker
//                                                               .platform
//                                                               .pickImage(
//                                                                   source: ImageSource
//                                                                       .gallery);
//                                                       print(images);
//                                                       if (picker != null) {
//                                                         setState(() {
//                                                           images[index] =
//                                                               Padding(
//                                                             padding: EdgeInsets
//                                                                 .symmetric(
//                                                               horizontal:
//                                                                   w / 13,
//                                                             ),
//                                                             child: ClipRRect(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           w / 20),
//                                                               child: Image.file(
//                                                                 File(picker
//                                                                     .path),
//                                                                 fit:
//                                                                     BoxFit.fill,
//                                                               ),
//                                                             ),
//                                                           );
//                                                           selected.add(File(
//                                                               picker.path));
//                                                         });
//                                                       }
//                                                     },
//                                                     child: images[index]);
//                                               }),
//                                           spacer2(context),
//                                           Align(
//                                             alignment: Alignment.center,
//                                             child: Text(
//                                                 "*Minimum 3 pictures required",
//                                                 style: TextStyle(
//                                                     fontSize: w / 25,
//                                                     color: Colors.grey)),
//                                           ),
//                                           // spacer2(context)
//                                         ],
//                                       ),
//                                     ])),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: h / 12,
//                 left: w / 50,
//                 right: w / 50,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: w / 20),
//                   width: w * 0.9,
//                   height: h * 0.01,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 10,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               gradient: const LinearGradient(colors: [
//                                 Color.fromRGBO(97, 54, 193, 1),
//                                 Color.fromRGBO(7, 211, 223, 1),
//                               ]),
//                             ),
//                           )),
//                       Expanded(
//                           flex: 1,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               color: Colors.white,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                       padding: EdgeInsets.only(
//                           left: w / 8, right: w / 8, bottom: w / 12),
//                       child: simpleButton('Continue', context, () {
//                         if (selected.isEmpty || selected.length < 3) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                   content: Text("Select Minimum 3")));
//                         } else {
//                           Navigator.push(
//                               context,
//                               CupertinoPageRoute(
//                                 builder: (context) => const Ready(),
//                               ));
//                         }
//                       }))),
//             ],
//           ),
//         ));
//   }
// }

class Ready extends StatelessWidget {
  const Ready({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 0, 77, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(24, 0, 77, 1),
        automaticallyImplyLeading: false,
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
                  ],
                ),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: w / 20),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Are You Ready to Indulge ?',
                        style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0.0, 0.0),
                              blurRadius: 13.0,
                              color: Color.fromRGBO(7, 211, 223, 0.7),
                            ),
                          ],
                          fontSize: 22,
                          color: Colors.white,
                        )),
                    spacer(context),
                    SvgPicture.asset('assets/Group 12261.svg',
                        fit: BoxFit.fill),
                    Padding(
                      padding: EdgeInsets.only(
                          left: w / 8, right: w / 8, bottom: w / 12),
                      child: simpleButton('Get Started', context, () {
                        Get.to(() => Home_Screen());
                      }),
                    )
                  ]),
              Positioned(
                  bottom: h / 1.8,
                  left: w / 3.3,
                  right: w / 4.5,
                  child: SvgPicture.asset(
                    'assets/Group 12252.svg',
                    height: w / 3,
                  )),
              Positioned(
                  bottom: h / 3.8,
                  left: w / 5,
                  right: w / 2.8,
                  child: SvgPicture.asset(
                    'assets/Group 12259.svg',
                    height: w / 2.8,
                  )),
              Positioned(
                  bottom: h / 3,
                  right: w / 15,
                  left: w / 1.8,
                  child: SvgPicture.asset(
                    'assets/Group 12111.svg',
                    height: w / 2,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
