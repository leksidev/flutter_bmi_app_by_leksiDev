import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class CardContent extends StatelessWidget {
  const CardContent(
      {super.key, required this.label, required this.icon, this.color});

  final String label;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          color: color,
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15.0,
            color: accentColor,
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Border cardBorder;
  final Widget? cardChild;
  const ReusableCard({
    super.key,
    required this.cardBorder,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: cardBorder,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.all(10.0),
      child: cardChild,
    );
  }
}
