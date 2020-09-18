// import 'package:flutter/material.dart';

// class BottomBar extends StatefulWidget {


// static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
// static const List<Widget> _widgetOptions = <Widget>[
//   Text(
//     'Index 0: Home',
//     style: optionStyle,
//   ),
//   Text(
//      'Index 1: Business',
//      style: optionStyle,
//   ),
//   Text(
//      'Index 2: School',
//      style: optionStyle,
//   ),
// ];

//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {

// int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           title: Text('Home'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.business),
//           title: Text('Business'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.school),
//           title: Text('School'),
//         ),
//       ],
//       currentIndex: _selectedIndex,
//       selectedItemColor: Colors.amber[800],
//       onTap: _onItemTapped,
//     );
    
//   }
// }