import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Safe routes',
      style: optionStyle,
    ),
    Text(
      'Contacts',
      style: optionStyle,
    ),
    Text(
      'History',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafePaths'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
          icon: Icon(Icons.business,),
          title: Text('Business', ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.school,),
          title: Text('School', ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
          icon: Icon(Icons.add, ),
          title: Text('History', ),
          ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,)
    );
  }
}
