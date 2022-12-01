import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants.dart';
import 'package:flutter_bmi_app/reusable_card.dart';

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
                children: const [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBmiTextStyle,
                  ),
                  Text(
                    'Всё хорошо, у нас нормальный индекс массы тела',
                    style: kLabelTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
