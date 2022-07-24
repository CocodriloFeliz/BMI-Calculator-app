import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/icon_content.dart';
import 'widgets/reusable_card.dart';
import 'constants/constants.dart';

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
                      color: gender == Gender.male ? kActiveColour : kInactiveColour,
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
                      color: gender == Gender.female ? kActiveColour : kInactiveColour,
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
              child: ReusableCard(color: kActiveColour),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: kActiveColour),
                  ),
                  Expanded(
                    child: ReusableCard(color: kActiveColour),
                  ),
                ],
              ),
            ),
            Container(
              color: kColorBottomContainer,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
