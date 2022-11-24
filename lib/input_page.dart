import 'package:flutter/material.dart';

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
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child:
                      ReusableCard(cardborder: Border.all(color: Colors.grey)),
                ),
                Expanded(
                  child:
                      ReusableCard(cardborder: Border.all(color: Colors.grey)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardborder: Border.all(color: Colors.grey)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardborder: Border.all(color: Colors.red, width: 3.0)),
                ),
                Expanded(
                  child:
                      ReusableCard(cardborder: Border.all(color: Colors.grey)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: "First",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: "Second",
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
          border: cardborder, borderRadius: BorderRadius.circular(15.0)),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
