import 'package:asuna/screens/main_page.dart';
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
    const Center(
      child: Text('a'),
    ),
    const Center(
      child: Text('b'),
    ),
    const Center(
      child: Text('c'),
    ),
    const Center(
      child: Text('d'),
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
