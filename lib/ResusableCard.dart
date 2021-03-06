import 'package:flutter/material.dart';

import 'constants.dart';

class CustomCard extends StatelessWidget {
  final Color colour;
  final cardChild;

  CustomCard({required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
