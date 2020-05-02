import 'package:flutter/material.dart';
import 'package:safepaths/screens/ContactScreen.dart';
import 'package:safepaths/screens/HomeScreen.dart';
import 'package:safepaths/screens/LocationScreen.dart';
import 'package:safepaths/screens/HistoryScreen.dart';
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

   List<Widget> _widgetOptions = <Widget>[
     new HomeScreen(),
     new LocationScreen(),
     new ContactScreen(),
     new HistoryScreen()



  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    var _image;
    var _label;
    switch(_selectedIndex){
      case 0:
        _image = Icon(Icons.message);
        _label = 'message';
        break;
      case 1:
        _image = Icon(Icons.local_hospital);
        _label = 'hospital';

        break;
      case 2:
        _image = Icon(Icons.message);
        _label = 'message';

        break;
      case 3:
        _image = Icon(Icons.message);
        _label = 'message';

        break;
      default:
        _image = Icon(Icons.message);
        _label = 'message';

        break;


    }



    return Scaffold(
      appBar: AppBar(
        title: Text('SafePaths'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],

      ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          icon: _image,
          label: Text(_label),
          backgroundColor: Colors.green,
          splashColor: Colors.green,


        ),
        bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
          showUnselectedLabels: true,

          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.home,),
          title: Text('Home', ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.near_me,),
          title: Text('Nearby', ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.contact_phone,),
          title: Text('Contacts', ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.history, ),
          title: Text('History', ),
          ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,)
    );
  }
}
