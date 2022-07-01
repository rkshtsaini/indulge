// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:indulge/screens/first_screen.dart';
import 'package:indulge/dependencies/dependencies.dart' as dl;

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
//     (value) => runApp(const RestartWidget(child: MyApp())),
//   );
// }

// class RestartWidget extends StatefulWidget {
//   final Widget child;
//   const RestartWidget({key, this.child}) : super(key: key);

//   static void restartApp(BuildContext context) {
//     context.findAncestorStateOfType<_RestartWidgetState>()?.restartApp();
//   }

//   @override
//   State<RestartWidget> createState() => _RestartWidgetState();
// }

// class _RestartWidgetState extends State<RestartWidget> {
//   Key key = UniqueKey();

//   void restartApp() {
//     setState(() {
//       key = UniqueKey();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return KeyedSubtree(key: key, child: widget.child);
//   }
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   SharedPreferences pref;
//   List<Map<String, dynamic>> data = [];
//   var settingData;
//   List list = [];
//   @override
//   void initState() {
//     super.initState();
//     settingValues();
//     print("data is :-" + settingData.toString());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: settingValues(),
//         builder: (context, snap) {
//           if (snap.hasData) {
//             print(snap.data);
//             list = snap.data as List;
//             return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               title: 'Indulge',
//               home: First_Screen(),
//             );
//           } else {
//             return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               theme: ThemeData(fontFamily: 'Navigo'),
//               title: 'Indulge',
//               home: const First_Screen(),
//             );
//           }
//         });
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dl.init();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Navigo'),
      debugShowCheckedModeBanner: false,
      title: 'Indulge',
      home: First_Screen(),
    );

    // return MaterialApp(
    // theme: ThemeData(fontFamily: 'Navigo'),
    // debugShowCheckedModeBanner: false,
    // title: 'Indulge',
    // home: First_Screen(),
    // );
  }
}
