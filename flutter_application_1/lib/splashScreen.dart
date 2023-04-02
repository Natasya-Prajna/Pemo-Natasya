import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() {
    var duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return MaterialApp(
          home: firstPaging(),
          routes: {
            'firstPaging' : (context) => firstPaging()
          },

        );
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/iLogo.png",
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
          ),
          Text(
            "Imoets Company",
            style: Theme.of(context).textTheme.displayMedium,
            ),
        ],
      )),
    );
  }
}