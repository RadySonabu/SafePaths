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
        crossAxisAlignment: CrossAxisAlignment.stretch,


        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: Text('Headline', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Card(
          margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
          color: Color(0xFF6070f2),

            elevation: 2,
            child: InkWell(

              splashColor: Colors.green,
              onTap: () {
                print('Card tapped.');
              },
              child: Container(

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 3, 3),
                      child: Text("No favoritism' in allowing POGOs amid lockdown – Roque - Rappler", style: TextStyle(color: Colors.white,fontSize: 35,), ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('The news is brought to you by CNN Philippines. Funds collected by the government from POGO establishments will be used to boost the fight to curb the coronavirus pandemic, says the Duterte spokesman', style: TextStyle(color: Colors.grey[100]),),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: Text('Infographics', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
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
                        child: Image(
                          image: AssetImage('assets/images/facts.jpg'),
                        )
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
                        child: Image(
                          image: AssetImage('assets/images/reduce_transmit.jpg'),
                        )
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
                        child: Image(
                          image: AssetImage('assets/images/spread_covid.jpg'),
                        )
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
                      height: 300,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/images/spread_covid.jpg'),
                          )
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
