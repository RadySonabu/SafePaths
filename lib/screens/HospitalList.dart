import 'package:flutter/material.dart';


class HospitalList extends StatefulWidget {
  @override
  _HospitalListState createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitals near you'),
        backgroundColor: Color(0xFF6070f2),
      ),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Text'),
            onTap: (){

            },
          );
        },
      ),

    );

  }
}
