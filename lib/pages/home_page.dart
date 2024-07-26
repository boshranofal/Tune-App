import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tune_app/widget/tune_item.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Color> tuneColors = const [
    Colors.red,
    Color(0xff2896F3),
    Color(0xff9C27B0),
    Color(0xff4CAF50),
    Colors.pink,
    Color(0xffFF5722),
    Color(0xff2F9688),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff253238),
      ),
      body: Column(
        children: tuneColors.map((e) => TuneItem(color: e)).toList(),
      ),
    );
  }
}
