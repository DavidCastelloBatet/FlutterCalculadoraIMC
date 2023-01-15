import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final Icon iconGender;
  final String textGender;

  const GenderWidget({
    Key? key,
    required this.iconGender,
    required this.textGender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [iconGender, Text(textGender)],
    );
  }
}
