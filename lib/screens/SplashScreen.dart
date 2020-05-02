import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safepaths/screens/NavBar.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),

    );

  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => NavBar()
    )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/safepaths_logo.png", height: 150, width: 150,),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Splash Screen",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
}
  }
