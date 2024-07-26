import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widget/tune_item.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'sounds/note1.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note2.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Colors.pink, sound: 'note5.wav'),
    TuneModel(color: Color(0xffFF5722), sound: 'note6.wav'),
    TuneModel(color: Color(0xffFFC107), sound: 'note7.wav'),
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
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
