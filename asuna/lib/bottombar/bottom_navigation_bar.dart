import 'package:asuna/screens/main%20page/main_page.dart';
import 'package:asuna/screens/payment%20page/payment_page.dart';
import 'package:asuna/screens/reports%20page/reports_page.dart';
import 'package:asuna/screens/services%20page/services_page.dart';
import 'package:asuna/screens/transfers%20page/transfers_page.dart';
import 'package:flutter/material.dart';

class TheBottomNavigationBar extends StatefulWidget {
  const TheBottomNavigationBar({super.key});

  @override
  TheBottomNavigationBarState createState() => TheBottomNavigationBarState();
}

class TheBottomNavigationBarState extends State<TheBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainPage(),
    const PaymentPage(),
    const TransfersPage(),
    const ReportsPage(),
    const ServicesPage(),
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
        title: const Text('Modular Bottom Navigation Bar'),
      ),
      body: _pages[_selectedIndex], // Displays the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
