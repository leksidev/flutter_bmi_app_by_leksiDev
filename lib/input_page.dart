import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'card_content.dart';

const bottomContainerHight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 12, 75, 184);
const primaryColor = Color.fromARGB(255, 186, 171, 171);
const inactiveColor = Color.fromARGB(68, 186, 171, 171);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
                    onPress: (() {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    }),
                    cardBorder: Border.all(
                      color: selectedGender == Gender.male
                          ? primaryColor
                          : inactiveColor,
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
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardBorder: Border.all(
                      color: selectedGender == Gender.female
                          ? primaryColor
                          : inactiveColor,
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
                      color: primaryColor,
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
