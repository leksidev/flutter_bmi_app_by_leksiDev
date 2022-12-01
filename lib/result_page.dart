import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants.dart';
import 'package:flutter_bmi_app/input_page.dart';
import 'package:flutter_bmi_app/reusable_card.dart';
import 'buttons.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Индекс Массы Тела'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: kActiveColor,
              child: const Center(
                child: Text(
                  'ВАШ РЕЗУЛЬТАТ',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  const Text(
                    '18.3',
                    style: kBmiTextStyle,
                  ),
                  const Text(
                    'Всё хорошо, у нас нормальный индекс массы тела',
                    style: kLabelTextStyle,
                  ),
                  BottomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttonTitle: 'ПЕРЕСЧИТАТЬ'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
