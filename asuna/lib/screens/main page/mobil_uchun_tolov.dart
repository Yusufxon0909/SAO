import 'package:flutter/material.dart';

class MobileUchunTolov extends StatefulWidget {
  const MobileUchunTolov({super.key});

  @override
  State<MobileUchunTolov> createState() => _MobileUchunTolovState();
}

class _MobileUchunTolovState extends State<MobileUchunTolov> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      border:
                          Border.all(color: Colors.grey.shade700, width: 0.5),
                      color: const Color(0xFF231F1C)),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Raqamni kiriting',
                      hintStyle: TextStyle(color: Colors.grey[200]),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.perm_identity,
                              color: Colors.blue),
                        ),
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 16, top: 9),
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
                    child: const Center(
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
      ],
    );
  }
}
