import 'package:flutter/material.dart';

class Case1 extends StatefulWidget {
  const Case1({super.key});

  @override
  State<Case1> createState() => _Case1State();
}

class _Case1State extends State<Case1> {
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
