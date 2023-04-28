import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/HomeScreen'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 1,
            child: Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('images/logo.png'),
                width: 100,
              ),
            )));
  }
}
