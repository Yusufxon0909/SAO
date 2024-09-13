import 'package:flutter/material.dart';

class Case0 extends StatefulWidget {
  const Case0({super.key});

  @override
  State<Case0> createState() => _Case0State();
}

class _Case0State extends State<Case0> {
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
