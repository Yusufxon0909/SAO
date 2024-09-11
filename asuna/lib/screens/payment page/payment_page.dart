import 'package:flutter/material.dart';
import 'package:asuna/screens/payment%20page/clas/davlatxizmatlari.dart';
import 'package:asuna/screens/payment%20page/clas/mobile.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<Simple> name = List.generate(
    18,
    (index) => Simple(
      name: nameindex(index),
    ),
  );

  static String nameindex(int index) {
    switch (index) {
      case 0:
        return "Mobile operatorlar";
      case 1:
        return "Davlat hizmatlari va DYHXX(GAI)";
      case 2:
        return "Komunal to'lovlar";
      case 3:
        return "Kredit so'ndirish";
      case 4:
        return "Internat-provayderlar";
      case 5:
        return "Soliqlar";
      case 6:
        return "Internat-xizmatlar";
      case 7:
        return "Televidenia";
      case 8:
        return "Xosting va domenlar";
      case 9:
        return "Ko'ngil ochar va dam olish";
      case 10:
        return "Sug'urta";
      case 11:
        return "Xayriya";
      case 12:
        return "Ta'lim";
      case 13:
        return "Sog'liq";
      case 14:
        return "Transport va avtoturargoh";
      case 15:
        return "Taksi";
      case 16:
        return "Hisob raqamiga to'lov";
      case 17:
        return "Internat-to'plamlari";
      default:
        return "Unknown";
    }
  }

  void _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => case0()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => case1()));
        break;
      // Add cases for other pages as needed
      default:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Page not implemented yet')),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
<<<<<<< HEAD
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "To'lov",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
=======
        child: Center(
          child: Column(
            children: [
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
                    color: Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Color(0xFFA0A0A0),
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Qidiruv',
                            hintStyle: TextStyle(
                                color: Color(0xFFA0A0A0), fontSize: 20),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 15, top: 8, bottom: 8),
                        child: InkWell(
                          onTap: () {
                            // Add QR code scanning functionality here
                          },
                          child: Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Color(0xFF007AFF),
                            size: 35,
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
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => case0()));
                        },
                        child: Container(
                          height: 140,
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
                                SizedBox(height: 20),
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
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      case0())); // Change this to appropriate page
                        },
                        child: Container(
                          height: 140,
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
                                SizedBox(height: 30),
                                Text(
                                  "Avtoto'lovlar",
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
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      case0())); // Change this to appropriate page
                        },
                        child: Container(
                          height: 140,
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
                                SizedBox(height: 30),
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
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Column(
                children: List.generate(
                  name.length,
                  (index) => rock(name[index], context, index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rock(Simple ism2, BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () => _navigateToPage(index, context),
          child: Container(
            height: 80,
            width: double.infinity, // Use double.infinity to expand the width
            color: Color.fromARGB(221, 57, 57, 57),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 18),
              child: Text(
                ism2.name ?? '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
>>>>>>> origin/payment_page_branch
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C2E), // Dark background color for the search bar
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFFA0A0A0),
                        size: 30, // Color for the search icon
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Qidiruv', // Search hint text
                          hintStyle: TextStyle(color: Color(0xFFA0A0A0), fontSize: 20),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Colors.white), // Text color
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 8, bottom: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TheBottomNavigationBar()));
                      },
                      child: const Icon(
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
                            builder: (context) =>
                                const TheBottomNavigationBar()));
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(221, 57, 57, 57)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
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
                            builder: (context) =>
                                const TheBottomNavigationBar()));
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(221, 57, 57, 57)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
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
                            builder: (context) =>
                                const TheBottomNavigationBar()));
                  },
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(221, 57, 57, 57)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
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

class Simple {
  IconData? simble;
  String? ism;
  String? info;
  String? vaqt;
  String? rasm;
  String? name;
  String? top;
  String? up;
  String? down;

  Simple({
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
<<<<<<< HEAD

Widget rock(Simple ism2, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TheBottomNavigationBar()));
        },
        child: Container(
          height: 80,
          width: 430,
          color: const Color.fromARGB(221, 57, 57, 57),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 18),
            child: Text(
              ism2.name ?? '',
              style: const TextStyle(
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
=======
>>>>>>> origin/payment_page_branch
