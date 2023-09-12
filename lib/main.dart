import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'http_helper.dart';
import 'grades.dart';

void main() {
  runApp(MyGrades());
}

class MyGrades extends StatelessWidget {
  const MyGrades({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = ThemeData.light();
    return MaterialApp(
      theme: theme,
      title: 'My Grades',

      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  HttpHelper helper = HttpHelper();

  @override
  void initState() {
    helper = HttpHelper();
    initialize();
    super.initState();
  }

  Future initialize() async {
    var nilai = [];
    nilai = (await helper.getNilai("1"))!;
    setState(() {
      nilai = nilai;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          width: 867,
          height: 594,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ]
          ),
          child: Row(
            children: [
              Container(
                width: 374,
                height: 515,
                margin: const EdgeInsets.only(left: 84, top: 40),
                decoration: ShapeDecoration(
                  color: Color(0xFFF9C200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(31),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: const Text(
                        'Nama Matkul',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0B0E6A),
                          fontSize: 24,
                          fontFamily: 'Hanken Grotesk',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Your Result',
                        style: TextStyle(
                          color: Color(0xFF17067D),
                          fontSize: 24,
                          fontFamily: 'Hanken Grotesk',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.36,
                        ),
                      )
                    ),
                    Container(
                      width: 250,
                      height: 250,
                      margin: const EdgeInsets.only(top: 50),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 250,
                                height: 249,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      bottom: 40,
                                      child: Container(
                                        width: 250,
                                        height: 454,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/bubble.png',),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    )
                                    ),
                                    const Positioned(
                                      left: 96,
                                      top: 134,
                                      child: Text(
                                        'of 100',
                                        style: TextStyle(
                                          color: Color(0xFF17224A),
                                          fontSize: 20,
                                          fontFamily: 'Hanken Grotesk',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.60,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 78,
                                      top: 58,
                                      child: SizedBox(
                                        width: 90,
                                        height: 69,
                                         child: Text(
                                          '76',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF17224A),
                                            fontSize: 64,
                                            fontFamily: 'Hanken Grotesk',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.96,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ],
                      )
                    )
                  ]
                )
              ),
              Container(
                width: 294,
                height: 476,
                margin: const EdgeInsets.only(left: 40),
                child:
                  Column(
                    children: [
                      Container(
                        height: 58,
                        width: 294,
                        margin: const EdgeInsets.only(left: 9, top: 10),
                        child: const Text(
                          'Ringkasan',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Hanken Grotesk',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: 285,
                          height: 351,
                          child: Column(
                            children: [
                              Positioned(
                                child: Container(
                                  width: 285,
                                  height: 58,
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 285,
                                          height: 58,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 0.50),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 14,
                                        right: 14,
                                        child: Container(
                                          width: 245,
                                          height: 50,
                                          child: Stack(
                                            children: const [
                                              Positioned(
                                                left: 15,
                                                top: 15,
                                                child: Text(
                                                  "UAS",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Hanken Grotesk',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 193,
                                                top: 20,
                                                child: Text(
                                                  '80/100',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: 'Hanken Grotesk',
                                                    fontWeight: FontWeight.w600,
                                                  )
                                                )
                                              ),

                                            ]
                                          )
                                        )
                                      )
                                    ],
                                  )
                                )
                              ),
                              Positioned(
                                child: Container(
                                  width: 285,
                                  height: 58,
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 285,
                                          height: 58,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 0.50),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          left: 14,
                                          right: 14,
                                          child: Container(
                                              width: 245,
                                              height: 50,
                                              child: Stack(
                                                  children: const [
                                                    Positioned(
                                                      left: 15,
                                                      top: 15,
                                                      child: Text(
                                                        "UAS",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontFamily: 'Hanken Grotesk',
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                        left: 193,
                                                        top: 20,
                                                        child: Text(
                                                        '80/100',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontFamily: 'Hanken Grotesk',
                                                          fontWeight: FontWeight.w600,
                                                          )
                                                        )
                                                    )
                                                  ]
                                              )
                                          )
                                      )
                                    ],
                                  )
                                )
                              ),
                              Positioned(
                                  child: Container(
                                      width: 285,
                                      height: 58,
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 285,
                                              height: 58,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              left: 14,
                                              right: 14,
                                              child: Container(
                                                  width: 245,
                                                  height: 50,
                                                  child: Stack(
                                                      children: const [
                                                        Positioned(
                                                          left: 15,
                                                          top: 15,
                                                          child: Text(
                                                            "UAS",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 20,
                                                              fontFamily: 'Hanken Grotesk',
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            left: 193,
                                                            top: 20,
                                                            child: Text(
                                                                '80/100',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontFamily: 'Hanken Grotesk',
                                                                  fontWeight: FontWeight.w600,
                                                                )
                                                            )
                                                        )
                                                      ]
                                                  )
                                              )
                                          )
                                        ],
                                      )
                                  )
                              ),
                              Positioned(
                                  child: Container(
                                      width: 285,
                                      height: 58,
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 285,
                                              height: 58,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              left: 14,
                                              right: 14,
                                              child: Container(
                                                  width: 245,
                                                  height: 50,
                                                  child: Stack(
                                                      children: const [
                                                        Positioned(
                                                          left: 15,
                                                          top: 15,
                                                          child: Text(
                                                            "UAS",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 20,
                                                              fontFamily: 'Hanken Grotesk',
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            left: 193,
                                                            top: 20,
                                                            child: Text(
                                                                '80/100',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontFamily: 'Hanken Grotesk',
                                                                  fontWeight: FontWeight.w600,
                                                                )
                                                            )
                                                        )
                                                      ]
                                                  )
                                              )
                                          )
                                        ],
                                      )
                                  )
                              ),
                              Positioned(
                                  child: Container(
                                      width: 285,
                                      height: 58,
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 285,
                                              height: 58,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              left: 14,
                                              right: 14,
                                              child: Container(
                                                  width: 245,
                                                  height: 50,
                                                  child: Stack(
                                                      children: const [
                                                        Positioned(
                                                          left: 15,
                                                          top: 15,
                                                          child: Text(
                                                            "UAS",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 20,
                                                              fontFamily: 'Hanken Grotesk',
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            left: 193,
                                                            top: 20,
                                                            child: Text(
                                                                '80/100',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontFamily: 'Hanken Grotesk',
                                                                  fontWeight: FontWeight.w600,
                                                                )
                                                            )
                                                        )
                                                      ]
                                                  )
                                              )
                                          )
                                        ],
                                      )
                                  )
                              )
                            ],
                          )
                        )
                      ),
                      Container(
                        width: 288,
                        height: 57,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF9C200),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {  },
                          child: const Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Hanken Grotesk',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          )
                        ),
                      )

                    ],
                  )
              )
            ]
          )
        )
      )
    );
  }
}

