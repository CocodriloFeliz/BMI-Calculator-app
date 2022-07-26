import 'package:bmi_calculator/brain_calculator.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:bmi_calculator/constants/constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.male;
  double heightClient = 180;
  double weightClient = 80;
  int ageClient = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: gender == Gender.male
                          ? kActiveColour
                          : kInactiveColour,
                      child: IconContent(
                        icon: const FaIcon(FontAwesomeIcons.mars),
                        title: 'MALE',
                        onPressedButton: () {
                          setState(() {
                            gender = Gender.male;
                          });
                        },
                        colorTitle: kColorTitle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: gender == Gender.female
                          ? kActiveColour
                          : kInactiveColour,
                      child: IconContent(
                        icon: const FaIcon(FontAwesomeIcons.venus),
                        title: 'FEMALE',
                        colorTitle: kColorTitle,
                        onPressedButton: () {
                          setState(() {
                            gender = Gender.female;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveColour,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kColorTitle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(heightClient.toStringAsFixed(0),
                            style: kGrossFont),
                        Text(
                          'cm',
                          style: TextStyle(color: kColorTitle),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: const SliderThemeData().copyWith(
                        inactiveTrackColor: kInactiveColour,
                        activeTrackColor: Colors.white,
                        thumbColor: kColorBottomContainer,
                        overlayColor: const Color(0x29E83D66),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 13.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 25.0),
                        trackHeight: 1.5,
                      ),
                      child: Slider(
                          value: heightClient,
                          min: 140.0,
                          max: 220.0,
                          onChanged: (double newHeight) {
                            setState(() {
                              heightClient = newHeight;
                            });
                          }),
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
                      color: kActiveColour,
                      child: Column(
                        children: [
                          Text('WEIGHT',
                              style: TextStyle(
                                color: kColorTitle,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(weightClient.toStringAsFixed(1),
                                  style: kGrossFont),
                              Text(
                                'kg',
                                style: TextStyle(color: kColorTitle),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: const FaIcon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    weightClient -= 0.5;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                icon: const FaIcon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    weightClient += 0.5;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveColour,
                      child: Column(
                        children: [
                          Text('AGE',
                              style: TextStyle(
                                color: kColorTitle,
                              )),
                          Text(ageClient.toString(), style: kGrossFont),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: const FaIcon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    ageClient--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                icon: const FaIcon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    ageClient++;
                                  });
                                },
                              )
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
              label: 'CALCULATE',
              onPressed: () {
                BrainCalculator calculator =
                    BrainCalculator(height: heightClient, weight: weightClient);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmi: calculator.calculateBMI(),
                              textInterpretation: calculator.textInterpretation(),
                              textResult: calculator.textResult(),
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
