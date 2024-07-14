import 'dart:async';
import 'package:flutter/material.dart';
import 'package:to_do/pages/home_page.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('TO-DO 📝 ',
              style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Trajan Pro', color: Colors.black,
                  decoration: TextDecoration.underline,decorationColor: Colors.white )),
        ),
      ),
    );
  }
}
