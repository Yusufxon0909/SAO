import 'package:asuna/bottombar/bottom_navigation_bar.dart';
import 'package:asuna/screens/payment%20page/clas/davlatxizmatlari.dart';
import 'package:asuna/screens/payment%20page/clas/mobile.dart';
import 'package:flutter/material.dart';

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
        return "Unknown"; // Add a default case to handle any other index
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              name.length,
              (index) => rock(name[index], context, index),
            ),
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
            width: 430,
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
            ),
          ),
        ),
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
