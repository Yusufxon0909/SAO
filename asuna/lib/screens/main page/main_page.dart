// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:asuna/screens/main%20page/drawer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Color backgroundColor = Colors.transparent;
  // void changeColor(Color color) {
  //   setState(() {
  //     if (color == Colors.blue.shade500) {
  //       backgroundColor = Colors.blue.shade500;
  //     } else if (color == Color(0xFF1A1A1A)) {
  //       backgroundColor = Color(0xFF1A1A1A);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade500,
            Color(0xFF1A1A1A),
            Color(0xFF1A1A1A),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white, size: 35),
          toolbarHeight: 60,
          backgroundColor: Color(0xFF1A1A1A),
          flexibleSpace: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 60, top: 30),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade200, width: 0.3),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.search, color: Colors.white, size: 25),
                    ),
                    Text(
                      "Qidiruv",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {},
          ),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
