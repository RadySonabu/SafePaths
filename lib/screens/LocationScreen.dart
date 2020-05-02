import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Image(
          image: AssetImage('assets/images/map.png'),
          fit: BoxFit.cover,
          height: 800,
        ),
      ),

    );
  }
}
