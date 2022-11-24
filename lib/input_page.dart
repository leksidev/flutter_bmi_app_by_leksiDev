import 'package:flutter/material.dart';

const bottomContainerHight = 80.0;

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
                    cardborder: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardborder: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardborder: Border.all(
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardborder: Border.all(
                      color: Colors.blueGrey,
                      width: 3.0,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardborder: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blueAccent,
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

class ReusableCard extends StatelessWidget {
  final Border cardborder;
  const ReusableCard({super.key, required this.cardborder});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: cardborder,
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.all(10.0),
    );
  }
}
