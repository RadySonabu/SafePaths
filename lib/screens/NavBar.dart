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
    var _title;

    switch(_selectedIndex){
      case 0:
        _image = Icon(Icons.call);
        _label = 'Call';
        _title = 'SafePaths';

        break;
      case 1:
        _image = Icon(Icons.location_searching);
        _label = 'Hospital';
        _title = 'SafeMap';

        break;
      case 2:
        _image = Icon(Icons.call);
        _label = 'Call';
        _title = 'Emergency Numbers';

        break;
      case 3:
        _image = Icon(Icons.message);
        _label = 'message';
        _title = 'SafePaths';
        break;
      default:
        _image = Icon(Icons.message);
        _label = 'message';

        break;


    }



    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: Color(0xFF6070f2),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],

      ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {

          },
          icon: _image,
          label: Text(_label),
          backgroundColor: Color(0xFF6070f2),
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
      selectedItemColor: Color(0xFF6070f2),
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,)
    );
  }
}
