// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:asuna/screens/main%20page/cards.dart';
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
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade400,
            Colors.blue.shade400,
            Color(0xFF242424),
            Color(0xFF242424),
            Color(0xFF242424),
            Color(0xFF242424),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white, size: 35),
          toolbarHeight: 60,
          backgroundColor: Color(0xFF242424),
          flexibleSpace: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 60, top: 32),
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  color: Color(0xFF242424),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300, width: 0.2),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
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
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Cards(),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 15, right: 15, bottom: 20),
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.wallet,
                                      color: Color(0xFF2979FF),
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      "0 so'm",
                                      style: TextStyle(
                                        color: Color(0xFF2979FF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Bu oyda cashback',
                                style: TextStyle(
                                    color: Colors.grey[300], fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              VerticalDivider(
                                indent: 10,
                                endIndent: 10,
                                thickness: 0.2,
                                color: Colors.grey[400],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 7),
                                        Text(
                                          "Premium",
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Obunani ulash',
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
