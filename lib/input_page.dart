import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'card_content.dart';
import 'constants.dart';

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
  int _height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'КАЛЬКУЛЯТОР ИМТ',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ? kPrimaryColor
                          : kInactiveColor,
                    ),
                    cardChild: const CardContent(
                      label: 'мужчина',
                      icon: Icons.male,
                      color: kDarkBlueAccentColor,
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
                          ? kPrimaryColor
                          : kInactiveColor,
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
                color: kPrimaryColor,
              ),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'рост',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'см',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kDarkBlueAccentColor,
                        inactiveTrackColor: kInactiveColor,
                        overlayColor: const Color.fromARGB(79, 226, 32, 123),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 8.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 25.0)),
                    child: Slider(
                      value: _height.toDouble(),
                      min: 120,
                      max: 220,
                      divisions: 100,
                      onChanged: ((double value) {
                        setState(() {
                          _height = value.toInt();
                        });
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardBorder: Border.all(
                      color: kPrimaryColor,
                    ),
                    cardChild: const Text("TEST"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardBorder: Border.all(
                      color: kPrimaryColor,
                    ),
                    cardChild: const Text("TEST"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kDarkBlueAccentColor,
            margin: const EdgeInsets.only(
              top: 10.0,
            ),
            width: double.infinity,
            height: kBottomContainerHight,
          ),
        ],
      ),
    );
  }
}
