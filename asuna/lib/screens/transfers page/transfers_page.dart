import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
  String kontak = "";
  String raqam = "";
class TransfersPage extends StatefulWidget {
  const TransfersPage({super.key});

  @override
  State<TransfersPage> createState() => _TransfersPageState();
}

class _TransfersPageState extends State<TransfersPage> {
  List<dynamic> xizmatlar = [
    Xizmat(
      nom: "rasm/karta.jpg",
    ),
    Xizmat(
      nom: "rasm/pul.jpg",
    ),
    Xizmat(
      nom: "rasm/qarz.jpg",
    ),
    Xizmat(
      nom: "rasm/clic.jpg",
    ),
  ];
List contakt =[
Kontak(
  nom: kontak,
  nomer: raqam,
)
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "O'tkazmalar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height:
                    40, // Bu yerda balandlikni o'zingiz xohlagan o'lchamga o'zgartiring
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.multiline,
                  obscureText: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12), // Ichki qismini moslash
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF363740)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color(0xFF1675F2), width: 2.0),
                    ),
                    hintText: "Karta, hamyon, telefon raqamni kiriting",
                    hintStyle:
                        const TextStyle(color: Colors.white54, fontSize: 12),
                    fillColor: const Color(0xFF363740),
                    filled: true,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.qr_code_scanner,
                          color: Color(0xFF1675F2)),
                      onPressed: () {
                        // Qo'shimcha amallarni bu yerda bajarishingiz mumkin
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 100, // ListView uchun balandlik
                child: ListView.builder(
                  scrollDirection:
                      Axis.horizontal, // ListView gorizontal bo'ladi
                  itemCount: xizmatlar.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 90, // Eni 200
                        height: 80, // Bo'yi 200
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(xizmatlar[index].nom),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.circular(10), // Border radius 10
                        ),
                        // child: Column(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Icon(xizmatlar[index].aykon, size: 30, color: Colors.white,),
                        //     Text(xizmatlar[index].nom ?? '',style: TextStyle(color: Colors.white,fontSize: 13),),
                        //     Text(xizmatlar[index].nom2 ?? '',style: TextStyle(color: Colors.white,fontSize: 13),),
                        //   ],
                        // ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Oxirgi o'tkazmalar",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Telefon kontaklari",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
           Column(
            children:contakt.map((tel)=>dizayn(tel)).toList(),
           )
          ],
        ),
      ),
    );
  }
}

class Xizmat {
  String? nom;
  Xizmat({
    this.nom,
  });
}

Widget dizayn(tel) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
    child: Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: const Color(0xFF363740),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(kontak, style: TextStyle(color: Colors.grey[300])),
                Text(
                  raqam,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

class Kontak {
  String? nom;
  String? nomer;
  Kontak({
    this.nom,
    this.nomer,
  });
}