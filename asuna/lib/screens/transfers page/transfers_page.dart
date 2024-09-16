import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

class TransfersPage extends StatefulWidget {
  const TransfersPage({super.key});

  @override
  State<TransfersPage> createState() => _TransfersPageState();
}

class _TransfersPageState extends State<TransfersPage> {
  List<dynamic> xizmatlar = [
    Xizmat(nom: "rasm/karta.jpg"),
    Xizmat(nom: "rasm/pul.jpg"),
    Xizmat(nom: "rasm/qarz.jpg"),
    Xizmat(nom: "rasm/clic.jpg"),
  ];

  List<Contact> telefonKontaktlar = [];

  @override
  void initState() {
    super.initState();
    _getContactsPermission();
  }

  // Kontaktlar uchun ruxsat so'rash va kontaktlarni olish
  Future<void> _getContactsPermission() async {
    if (await Permission.contacts.request().isGranted) {
      _getContacts();
    } else {
      // Ruxsat so'ralmagan bo'lsa yoki rad etilgan bo'lsa, foydalanuvchiga xabar berishingiz mumkin
    }
  }

  // Telefon kontaktlarini olish
  Future<void> _getContacts() async {
    final contacts = await ContactsService.getContacts();
    setState(() {
      telefonKontaktlar = contacts.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              "O'tkazmalar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 40,
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.multiline,
                  obscureText: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF363740)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xFF1675F2), width: 2.0),
                    ),
                    hintText: "Karta, hamyon, telefon raqamni kiriting",
                    hintStyle: const TextStyle(color: Colors.white54, fontSize: 12),
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
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: xizmatlar.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 90,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(xizmatlar[index].nom),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Telefon kontaklari",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Telefon kontaktlarini chiqarish
            Expanded(
              child: ListView.builder(
                itemCount: telefonKontaktlar.length,
                itemBuilder: (context, index) {
                  Contact contact = telefonKontaktlar[index];
                  return dizayn(contact);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Xizmat {
  String? nom;
  Xizmat({this.nom});
}

// Telefon kontakt dizayni
Widget dizayn(Contact contact) {
  String contactName = contact.displayName ?? "Noma'lum kontakt";
  String contactNumber = contact.phones?.isNotEmpty == true
      ? contact.phones!.first.value ?? "Noma'lum raqam"
      : "Noma'lum raqam";

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
            const CircleAvatar(
              radius: 23,
              backgroundColor: Colors.black,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(contactName, style: TextStyle(color: Colors.grey[300])),
                Text(
                  contactNumber,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
