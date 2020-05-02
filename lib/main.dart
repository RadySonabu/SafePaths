import 'package:flutter/material.dart';
import 'package:safepaths/screens/NavBar.dart';
import 'package:safepaths/screens/SplashScreen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

        statusBarColor: Color(0xFF6070f2),

        statusBarIconBrightness: Brightness.light

    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
    );
  }
}

