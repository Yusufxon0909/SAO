// import 'package:dars_1/animation%20and%20lotie.dart';
import 'package:asuna/bottombar/bottom_navigation_bar.dart';

import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _ThirdState();
}

class _ThirdState extends State<PaymentPage> {
  List name = [
    simple(
      name: "Mobile operatorlar",
    ),
    simple(
      name: "Davlat hizmatlari va DYHXX(GAI)",
    ),
    simple(
      name: "Komunal to'lovlar",
    ),
    simple(
      name: "Kredit so'ndirish",
    ),
    simple(
      name: "Internat-provayderlar",
    ),
    simple(
      name: "Soliqlar",
    ),
    simple(
      name: "Internat-xizmatlar",
    ),
    simple(
      name: "Televidenia",
    ),
    simple(
      name: "Xosting va domenlar",
    ),
    simple(
      name: "Ko'ngil ochar va dam olish",
    ),
    simple(
      name: "Sug'urta",
    ),
    simple(
      name: "Xayriya",
    ),
    simple(
      name: "Ta'lim",
    ),
    simple(
      name: "Sog'liq",
    ),
    simple(
      name: "Transport va avtoturargoh",
    ),
    simple(
      name: "Taksi",
    ),
    simple(
      name: "Hisob raqamiga to'lov",
    ),
    simple(
      name: "Internat-to'plamlari",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "To'lov",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(
                    0xFF2C2C2E), // Dark background color for the search bar
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFFA0A0A0),
                        size: 30, // Color for the search icon
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Qidiruv', // Search hint text
                          hintStyle:
                              TextStyle(color: Color(0xFFA0A0A0), fontSize: 20),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Colors.white), // Text color
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15, top: 8, bottom: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TheBottomNavigationBar()));
                      },
                      child: Icon(
                        Icons.qr_code_scanner_outlined, // QR code icon
                        color: Color(0xFF007AFF),
                        size: 35, // Color for the QR code icon
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TheBottomNavigationBar()));
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(221, 57, 57, 57)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star_border,
                            size: 35,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sraralangan to'lovlar",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TheBottomNavigationBar()));
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(221, 57, 57, 57)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 35,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            " Avtoto'lovlar",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TheBottomNavigationBar()));
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(221, 57, 57, 57)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.add_location_alt_outlined,
                            size: 35,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Joylarda to'lova",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              children: name.map((ism2) => rock(ism2, context)).toList(),
            ),
          ),
        ]),
      ),
    );
  }
}

class simple {
  IconData? simble;
  String? ism;
  String? info;
  String? vaqt;
  String? rasm;
  String? name;
  String? top;
  String? up;
  String? down;
  simple({
    this.simble,
    this.ism,
    this.info,
    this.vaqt,
    this.rasm,
    this.name,
    this.top,
    this.up,
    this.down,
  });
}

Widget rock(ism2, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TheBottomNavigationBar()));
        },
        child: Container(
          height: 80,
          width: 430,
          color: Color.fromARGB(221, 57, 57, 57),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 18),
            child: Text(
              ism2.name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ),
  );
}
