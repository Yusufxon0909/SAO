import 'package:flutter/material.dart';

class case0 extends StatefulWidget {
  const case0({super.key});

  @override
  State<case0> createState() => _case0State();
}

class _case0State extends State<case0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
