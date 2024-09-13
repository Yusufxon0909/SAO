// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:asuna/screens/main%20page/cards.dart';
import 'package:asuna/screens/main%20page/four_containers.dart';
import 'package:asuna/screens/main%20page/image_conatiners_in_row.dart';
import 'package:asuna/screens/main%20page/xizmatlar_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            padding: const EdgeInsets.only(top: 30, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Cards(),
                FourContainers(),
                XizmatlarMenu(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, bottom: 15),
                  child: Text(
                    "Mobil aloqa uchun to'lov",
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey.shade700, width: 0.5),
                              color: Color(0xFF231F1C)),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Raqamni kiriting',
                              hintStyle: TextStyle(color: Colors.grey[200]),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.perm_identity,
                                      color: Colors.blue),
                                ),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 16, top: 9),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade300,
                                  Colors.blue.shade900,
                                ],
                              ),
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  "To'lash",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ImageContainerRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
