import 'package:flutter/material.dart';


class HospitalList extends StatefulWidget {
  @override
  _HospitalListState createState() => _HospitalListState();
}



class _HospitalListState extends State<HospitalList> {
  void _showDialog() {
    // flutter defined function
    print('tapped dialog');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog

            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
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
              _showDialog();
            },
          );
        },
      ),

    );

  }
}
