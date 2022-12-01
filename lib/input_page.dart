import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/result_page.dart';
import 'reusable_card.dart';
import 'card_content.dart';
import 'constants.dart';
import 'buttons.dart';

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
  int _weight = 30;
  int _age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kDarkBlueAccentColor,
        centerTitle: true,
        title: const Text(
          'Индекс Массы Тела',
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
                    cardColor: selectedGender == Gender.male
                        ? kActiveColor
                        : kPrimaryColor,
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
                    cardColor: selectedGender == Gender.female
                        ? kActiveColor
                        : kPrimaryColor,
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
              cardColor: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'РОСТ',
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
                        thumbColor: kDarkBlueAccentColor,
                        activeTrackColor: kLabelColor,
                        inactiveTrackColor: kActiveColor,
                        overlayColor: const Color.fromARGB(79, 226, 32, 123),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 10.0),
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
                    cardColor: kActiveColor,
                    cardChild: Column(
                      children: [
                        const Text(
                          'ВЕС',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          _weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.plus_one,
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.exposure_minus_1,
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveColor,
                    cardChild: Column(
                      children: [
                        const Text(
                          'ВОЗРАСТ',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          _age.toString(),
                          style: kNumberTextStyle,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.plus_one,
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.exposure_minus_1,
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ResultPage()));
            },
            buttonTitle: ' РАССЧИТАТЬ',
          ),
        ],
      ),
    );
  }
}
