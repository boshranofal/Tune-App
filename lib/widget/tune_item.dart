// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    Key? key,
    required this.tune,
  }) : super(key: key);
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playsound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
