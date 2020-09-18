import 'package:Finance/android/views/over-view.view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final tabs = [
    OverViewView(),
    OverViewView(),
    OverViewView(),
    Center(
      child: Container(
        padding: EdgeInsets.all(80),
        child: Text(
          'EM DESENVOLVIMENTO',
          style: TextStyle(
            fontWeight: FontWeight.w600,
        color:Color(0xFF7E7F80) ,
        fontSize: 26,
          ),
        ),
      ),
    ),
   Center(
      child: Container(
        padding: EdgeInsets.all(80),
        child: Text(
          'EM DESENVOLVIMENTO',
          style: TextStyle(
            fontWeight: FontWeight.w600,
        color:Color(0xFF7E7F80) ,
        fontSize: 26,
          ),
        ),
      ),
    ),
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: tabs[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Color(0x00ffffff),
        iconSize: 28,
        backgroundColor: Color(0xFFF3F8FE).withOpacity(0.8),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              size: 30,
              color: Color(0xFF3E4685),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).primaryColorDark,
        selectedItemColor: Theme.of(context).primaryColorDark,
        onTap: _onItemTapped,
      ),
    );
  }
}
