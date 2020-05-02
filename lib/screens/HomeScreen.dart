import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch
        ,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: Text('Headline', style: TextStyle(fontSize: 35),),
          ),
          Card(
          margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 7.0),
            elevation: 2,
            child: InkWell(

              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Some Text here from API'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: Text('Infographics', style: TextStyle(fontSize: 35),),
          ),

          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 7.0),
                  elevation: 2,
                  child: InkWell(

                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Some info graphics images part'),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 7.0),
                  elevation: 2,
                  child: InkWell(

                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Some info graphics images part'),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 7.0),
                  elevation: 2,
                  child: InkWell(

                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Some info graphics images part'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
