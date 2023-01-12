import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colorFons;

  const ReusableCard({
    Key? key,
    required this.colorFons,
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
    );
  }
}
