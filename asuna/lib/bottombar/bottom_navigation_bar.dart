import 'package:asuna/screens/main%20page/main_page.dart';
import 'package:asuna/screens/payment%20page/payment_page.dart';
import 'package:asuna/screens/reports%20page/reports_page.dart';
import 'package:asuna/screens/services%20page/services_page.dart';
import 'package:asuna/screens/transfers%20page/transfers_page.dart';
import 'package:flutter/cupertino.dart';
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
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.2,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF242424),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Asosiy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: "To'lov",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: "O'tkazmalar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline),
              label: 'Hisobotlar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined),
              label: 'Xizmatlar',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF2979FF),
          unselectedItemColor: Colors.grey[300],
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
        ),
      ),
    );
  }
}
