import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'card_content.dart';

const bottomContainerHight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 12, 75, 184);
const primaryColor = Color.fromARGB(255, 186, 171, 171);
const accentColor = Color.fromARGB(255, 44, 71, 117);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'КАЛЬКУЛЯТОР ИМТ',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardBorder: Border.all(
                      color: primaryColor,
                    ),
                    cardChild: const CardContent(
                      label: 'мужчина',
                      icon: Icons.male,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardBorder: Border.all(
                      color: primaryColor,
                    ),
                    cardChild: const CardContent(
                      label: 'женщина',
                      icon: Icons.female,
                      color: Color.fromARGB(255, 243, 127, 166),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardBorder: Border.all(
                color: primaryColor,
              ),
              cardChild: const Text("TEST"),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardBorder: Border.all(
                      color: accentColor,
                      width: 3.0,
                    ),
                    cardChild: const Text("TEST"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardBorder: Border.all(
                      color: primaryColor,
                    ),
                    cardChild: const Text("TEST"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(
              top: 10.0,
            ),
            width: double.infinity,
            height: bottomContainerHight,
          ),
        ],
      ),
    );
  }
}
