import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indulge/screens/home_screen.dart';
import 'package:indulge/screens/popup.dart';

import 'package:indulge/widgets/widgets.dart';

class QuestionWidget extends StatefulWidget {
  QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionNumber = 1;
  _showBottomSheet(BuildContext context) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return QuizDone();
        });
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  bool done = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/Group 12587@3x.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 9,
              left: w / 20,
              right: w / 20,
              bottom: w / 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Indulge Spark',
                      style: TextStyle(fontSize: w / 18, color: Colors.white),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 12,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(20, 149, 195, 1),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 1),
                                color: Color.fromRGBO(255, 51, 102, 1),
                                blurRadius: w / 20)
                          ],
                          borderRadius: BorderRadius.circular(w / 10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 51, 102, 1),
                              width: 1)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/timer(2).svg',
                            height: MediaQuery.of(context).size.width / 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).size.width / 80),
                            child: Text(
                              '00:10',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Digital 7',
                                fontSize:
                                    MediaQuery.of(context).size.width / 15,
                              ),
                            ),
                          )
                        ],
                      )),
                    )
                  ],
                ),
                Text(
                  'Question' + ' $_questionNumber / ${question.length}',
                  style: TextStyle(fontSize: w / 18, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: w / 20),
                  width: w * 0.75,
                  height: h * 0.03,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        blurRadius: w / 25,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(w / 8),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: _questionNumber,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w / 8),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(97, 54, 193, 1),
                                Color.fromRGBO(7, 211, 223, 1),
                              ]),
                            ),
                          )),
                      Expanded(
                          flex: question.length - _questionNumber,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w / 8),
                              color: Colors.transparent,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: h * 0.6,
                  width: w * 0.9,
                  child: Stack(
                    children: [
                      Positioned(
                        top: h * 0.02,
                        left: w * 0.05,
                        right: w * 0.03,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(251, 251, 251, 0.7),
                              borderRadius: BorderRadius.circular(w / 15)),
                          height: h * 0.5,
                          width: w * 0.75,
                        ),
                      ),
                      Positioned(
                        top: h * 0.035,
                        left: w * 0.08,
                        right: w * 0.06,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(251, 251, 251, 0.5),
                              borderRadius: BorderRadius.circular(w / 15)),
                          height: h * 0.5,
                          width: w * 0.65,
                        ),
                      ),
                      Positioned(
                        top: h * 0.05,
                        left: w * 0.11,
                        right: w * 0.09,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(251, 251, 251, 0.5),
                              borderRadius: BorderRadius.circular(15)),
                          height: h * 0.5,
                          width: w * 0.55,
                        ),
                      ),
                      Positioned(
                        left: w * 0.045,
                        right: w * 0.03,
                        child: SizedBox(
                          height: h * 0.5,
                          width: w * 0.55,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(w / 25)),
                              child: null),
                        ),
                      ),
                      SizedBox(
                          child: PageView.builder(
                              scrollDirection: Axis.vertical,
                              controller: _controller,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: question.length,
                              itemBuilder: (context, index) {
                                final _question = question[index];
                                return buildQuestion(_question);
                              }))
                    ],
                  ),
                ),
                simpleButton(done ? 'SUBMIT' : 'NEXT', context, () {
                  if (_questionNumber < question.length) {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOutSine,
                    );
                    setState(() {
                      _questionNumber++;
                    });
                  } else {
                    setState(() {
                      done = !done;
                    });

                    _showBottomSheet(context);
                  }
                }),
              ]),
        ),
      ]),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.width / 3.4,
            child: Text(
              question.text,
              style: TextStyle(
                color: Colors.white,
                background: Paint()..color = Color.fromRGBO(121, 141, 242, 1),
                height: 1.8,
                fontSize: MediaQuery.of(context).size.width / 18,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 20.0,
              right: MediaQuery.of(context).size.width / 20),
          child: Expanded(
              child: OptionsWidget(
            question: question,
            onClickOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
              }
            },
          )),
        ),
        // buildElevatedButton()
      ],
    );
  }
}

final question = [
  Question(
      text: '1 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '2 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '3 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '4 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '5 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '6 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '7 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '8 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '9 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
  Question(
      text: '10 What do you find most attractive in a significant other?',
      options: [
        Option(text: 'Kindness'),
        Option(text: 'Good Morals'),
        Option(text: 'Adventurous Spirit'),
        Option(text: 'Respectful Manner'),
      ]),
];

class OptionsWidget extends StatefulWidget {
  final Question question;
  final ValueChanged<Option> onClickOption;
  const OptionsWidget(
      {Key? key, required this.question, required this.onClickOption})
      : super(key: key);

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
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

  Widget buildOption(BuildContext context, Option option) {
    var selected_index;
    return GestureDetector(
      onTap: () => widget.onClickOption(option),
      child: Container(
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(239, 232, 255, 1),
        ),
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                option.text,
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/Ellipse 1101.svg'))
            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.selectedOption,
    this.isLocked = false,
  });
}

class Option {
  final String text;

  Option({
    required this.text,
  });
}

class QuizDone extends StatefulWidget {
  QuizDone({Key? key}) : super(key: key);

  @override
  State<QuizDone> createState() => _QuizDoneState();
}

class _QuizDoneState extends State<QuizDone> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.lighten),
                  image: ExactAssetImage(
                    'assets/Group 12587@3x.png',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h / 5.5),
            child: SvgPicture.asset('assets/Group 12589.svg'),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: h / 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Spark Matches',
                    style: TextStyle(fontSize: w / 20, color: Colors.white),
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(242, 6, 172, 1),
                    radius: h / 12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '7/10',
                          style: TextStyle(
                              fontSize: w / 8, fontFamily: 'Lust Slim'),
                        ),
                        Text(
                          'Your Score',
                          style: TextStyle(
                            fontSize: w / 35,
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: h / 1.7,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: w / 10),
                            child: Container(
                              height: h / 1.8,
                              width: w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(w / 15),
                                      topLeft: Radius.circular(w / 15))),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: w / 6, bottom: h / 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: w / 7),
                                      child: SvgPicture.asset(
                                          'assets/Group 12590.svg'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: w / 6.0),
                                      child: Text(
                                        'Check your requests session after 10 PM to see your matches',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 51, 102, 1),
                                            fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: w / 6),
                                      child: simpleButton(
                                          'Back to Home', context, () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Home_Screen(),
                                            ));
                                      }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: h * 0.48,
                              left: w * 0.3,
                              right: w * 0.3,
                              child:
                                  SvgPicture.asset('assets/Group 12296.svg')),
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: EdgeInsets.only(top: w / 12),
                    //   child:
                    // Container(
                    //     height: h / 1.8,
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.only(
                    //             topRight: Radius.circular(w / 15),
                    //             topLeft: Radius.circular(w / 15))),
                    //   ),
                    // ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
