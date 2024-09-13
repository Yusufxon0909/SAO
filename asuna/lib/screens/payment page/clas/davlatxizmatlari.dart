import 'package:flutter/material.dart';

class case1 extends StatefulWidget {
  const case1({super.key});

  @override
  State<case1> createState() => _case1State();
}

class _case1State extends State<case1> {
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
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
