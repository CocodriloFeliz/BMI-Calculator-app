import 'package:flutter/material.dart';

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
                children: const [
                  Expanded(
                    child: ReusableCard(color: Color(0xFF323244)),
                  ),
                  Expanded(
                    child: ReusableCard(color: Color(0xFF323244)),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ReusableCard(color: Color(0xFF323244)),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: ReusableCard(color: Color(0xFF323244)),
                  ),
                  Expanded(
                    child: ReusableCard(color: Color(0xFF323244)),
                  ),
                ],
              ),
            ),
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
