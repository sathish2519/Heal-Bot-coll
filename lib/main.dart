import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendbot/screens/boarding_screen.dart';
import 'package:vendbot/screens/registerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:Splashscreen.id,
      routes: {
        Splashscreen.id:(context)=>Splashscreen(),
        Boardingscreen.id:(context)=>Boardingscreen(),

      },
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);
  static const String id='Splashscreen';

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(
      seconds: 3
    ),()=>Navigator.pushReplacementNamed(context, Boardingscreen.id),);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,overlays: []);
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child:Image.asset('images/logo.png')
      ),
    );
  }
}

