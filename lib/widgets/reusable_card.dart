import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colorFons;
  final Widget? cardChild;

  const ReusableCard({
    Key? key,
    required this.colorFons,
    this.cardChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colorFons,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: cardChild,
    );
  }
}
