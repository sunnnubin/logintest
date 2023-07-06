import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.amber,
      height: 300,
      width: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.black,
            height: 350,
            width: 800,
          ),
          Container(
            color: Colors.amber,
            height: 350,
            width: 500,
          )
        ],
      ),
    ));
  }
}
