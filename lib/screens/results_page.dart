import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmi,
      required this.textResult,
      required this.textInterpretation})
      : super(key: key);

  final String bmi;
  final String textResult;
  final String textInterpretation;
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
                children: [
                  Text(
                    textResult,
                    style: kTextSubtitlePage,
                  ),
                  Text(
                    bmi,
                    style: kBigNumber,
                  ),
                  Text(
                    textInterpretation,
                    textAlign: TextAlign.center,
                  )
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
