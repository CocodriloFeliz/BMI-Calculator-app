import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Your Result',
                style: kTextTitlePage,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'OVERWEIGHT',
                    style: kTextSubtitlePage,
                  ),
                  Text(
                    '40.9',
                    style: kBigNumber,
                  ),
                  Text('Your BMI result is quite low, you should eat more!',
                  textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                label: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    ));
  }
}
