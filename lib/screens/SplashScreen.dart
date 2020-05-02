import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('assets/images/safepaths_logo.png'),

                height: 150,
                width: 150,

              ),
            ),
            FlatButton(
              color: Colors.yellow,
              onPressed: (){},
            )

          ],
        ),
      ),
    );
  }
}
