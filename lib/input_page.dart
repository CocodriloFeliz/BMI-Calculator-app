import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/icon_content.dart';
import 'widgets/reusable_card.dart';

Color activeColour = const Color(0xFF323244);
Color inactiveColour = const Color(0xFF24263B);
Color colorBottomContainer = const Color(0xFFE83D66);
Color colorTitle = const Color(0xFF838491);
const double bottomContainerHeight = 80.0;

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
                      color: gender == Gender.male ? activeColour : inactiveColour,
                      child: IconContent(
                        icon: const FaIcon(FontAwesomeIcons.mars),
                        title: 'MALE',
                        onPressedButton: () {
                          setState(() {
                            gender = Gender.male;
                          });
                        },
                        colorTitle: colorTitle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: gender == Gender.female ? activeColour : inactiveColour,
                      child: IconContent(
                        icon: const FaIcon(FontAwesomeIcons.venus),
                        title: 'FEMALE',
                        colorTitle: colorTitle,
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
              child: ReusableCard(color: activeColour),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: activeColour),
                  ),
                  Expanded(
                    child: ReusableCard(color: activeColour),
                  ),
                ],
              ),
            ),
            Container(
              color: colorBottomContainer,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
