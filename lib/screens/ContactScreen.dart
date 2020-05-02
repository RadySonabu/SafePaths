import 'package:flutter/material.dart';
import 'package:safepaths/screens/HospitalList.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[

          FlatButton(
            onPressed: (){
              print('911');
            },
            padding: EdgeInsets.all(0),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[

                  Image.asset(
                    "assets/images/911.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                    color: Colors.grey[50],
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
//                      Text(data['data']['cases'].toString(), style: TextStyle(fontSize: 30, color: Colors.grey[900])),
                        Text("911 EMERGENCY", style: TextStyle(fontSize: 18,color: Colors.grey[500])),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ),
          FlatButton(
            onPressed: (){
              print('DOH');
            },
            padding: EdgeInsets.all(0),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[

                  Image.asset(
                    "assets/images/doh.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                    color: Colors.grey[50],
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
//                      Text(data['data']['cases'].toString(), style: TextStyle(fontSize: 30, color: Colors.grey[900])),
                        Text("DEPARTMENT OF HEALTH", style: TextStyle(fontSize: 18,color: Colors.grey[500])),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ),
          FlatButton(
            onPressed: (){
              print('PNP');
            },
            padding: EdgeInsets.all(0),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[

                  Image.asset(
                    "assets/images/pnp.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                    color: Colors.grey[50],
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
//                      Text(data['data']['cases'].toString(), style: TextStyle(fontSize: 30, color: Colors.grey[900])),
                        Text("PHILIPPINE NATIONAL POLICE", style: TextStyle(fontSize: 18,color: Colors.grey[500])),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HospitalList(),
                ),
              );
            },
            padding: EdgeInsets.all(0),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[

                  Image.asset(
                    "assets/images/hospital.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                    color: Colors.grey[50],
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
//                      Text(data['data']['cases'].toString(), style: TextStyle(fontSize: 30, color: Colors.grey[900])),
                        Text("NEAREST HOSPITAL", style: TextStyle(fontSize: 18,color: Colors.grey[500])),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ),


        ],

      )
    );
  }
}
