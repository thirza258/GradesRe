import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyGrades());
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
                          height: 332,
                          margin: const EdgeInsets.only(top: 3),
                          child: Column(
                            children: [
                              Positioned(
                                  child: Container(
                                    width: 285,
                                    height: 58,
                                    margin: const EdgeInsets.only(top: 5),
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
                                      margin: const EdgeInsets.only(top: 5),
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

