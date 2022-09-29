// ignore_for_file: use_key_in_widget_constructors

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendbot/auth.dart';
import 'package:vendbot/screens/forgotpassword.dart';
import 'package:vendbot/screens/landing_screen.dart';
import 'package:vendbot/screens/login.dart';

import 'auth.dart';

class Boardingscreen extends StatefulWidget {
  const Boardingscreen({Key? key}) : super(key: key);
  static const String id = "BoardingScreen";

  @override
  State<Boardingscreen> createState() => _BoardingscreenState();
}

class _BoardingscreenState extends State<Boardingscreen> {
  double scroller = 0;

  @override
  Widget build(BuildContext context) {
    //to stop landscape mode
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          // Icon(
          //     Icons.h_mobiledata,
          //     color: Colors.blue[600],
          //     size: 40.0,
          //   ),
          const Text(
            "H",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.teal,
            ),
          ),
          Text(
            "Bot",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blue[600],
            ),
          ),
        ]),
      ),
      body: Stack(
        children: [
          PageView(
            onPageChanged: (val) {
              setState(() {
                scroller = val.toDouble();
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: onboard(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Need a Health Support",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30),
                      ),
                      const Text(
                        "Chat With Our Doctors",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('images/lp2.png'),
                      ),
                    ],
                  ),
                ),
              ),
              //onboard page 2
              //onboard page 3
              onboard(
                boardColumn: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Check yor health symptom",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Use our HealBot to check your health condition",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('images/pg2.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: onboard(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Lets Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30),
                      ),
                      // const Text("Chat With Our Doctors",textAlign: TextAlign.center,
                      //   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 25),
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('images/lp2.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DotsIndicator(
                  dotsCount: 3,
                  position: scroller,
                  decorator: const DotsDecorator(activeColor: Colors.blue),
                ),
                scroller == 2
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        // child: ElevatedButton(
                        //     style: ButtonStyle(
                        //         backgroundColor:
                        //             MaterialStateProperty.all(Colors.blue)),
                        //     onPressed: () {
                        //       Navigator.pushAndRemoveUntil(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => LoginWidget(
                        //                   onClickedSignUp: () {},
                        //                 )),
                        //         (Route<dynamic> route) => false,
                        //       );
                        //     },
                        //     child: const Text('Lets GO')),
                        child: GestureDetector(
                          child: Text(
                            'LETS GO',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                            ),
                          ),
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginWidget(
                                        onClickedSignUp: () {},
                                      ))),
                        ),
                      )
                    : TextButton(
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        onPressed: () {},
                      ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class onboard extends StatelessWidget {
  final Column? boardColumn;
  const onboard({Key? key, this.boardColumn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: Colors.white70,
            child: Center(
              child: boardColumn,
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100))),
          ),
        )
      ],
    );
  }
}
