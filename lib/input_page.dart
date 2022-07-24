import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color colorCard = const Color(0xFF323244);
Color colorBottomContainer = const Color(0xFFE83D66);
Color colorTitle = const Color(0xFF838491);
const double bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      color: colorCard,
                      child: ChildInfo(
                        icon: const FaIcon(FontAwesomeIcons.mars),
                        title: 'MALE',
                        colorTitle: colorTitle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: colorCard,
                      child: ChildInfo(
                        icon: const FaIcon(FontAwesomeIcons.venus),
                        title: 'FEMALE',
                        colorTitle: colorTitle,
                      ),
                      ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: colorCard),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: colorCard),
                  ),
                  Expanded(
                    child: ReusableCard(color: colorCard),
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

class ChildInfo extends StatelessWidget {
  final FaIcon icon;
  final String title;
  final Color colorTitle;

  const ChildInfo({Key? key, required this.icon, required this.title, required this.colorTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: icon,
          onPressed: () {},
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: TextStyle(color: colorTitle),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;

  const ReusableCard({Key? key, required this.color, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}
