import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculadora/widgets/widgets.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color bottomContainerColour = Color(0xFFEB1555);

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    colorFons: activeCardColour,
                    cardChild: GenderWidget(
                        iconGender: Icon(FontAwesomeIcons.mars),
                        textGender: 'Home'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorFons: activeCardColour,
                    cardChild: GenderWidget(
                      iconGender: Icon(FontAwesomeIcons.venus),
                      textGender: 'Dona',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colorFons: activeCardColour),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colorFons: activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(colorFons: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
