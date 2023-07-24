// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:paydai/mainPages/cards.dart';
import 'package:paydai/mainPages/home.dart';
import 'package:paydai/mainPages/transactions.dart';
import 'package:paydai/mainPages/settings.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Home(),
    Cards(),
    Transactions(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }
}
