import 'package:flutter/material.dart';
  

Color colorCard = const Color(0xFF323244);
Color colorBottomContainer = const Color(0xFFE83D66);
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
                    child: ReusableCard(color: colorCard),
                  ),
                  Expanded(
                    child: ReusableCard(color: colorCard),
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

class ReusableCard extends StatelessWidget {

  final Color color;

  const ReusableCard({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
