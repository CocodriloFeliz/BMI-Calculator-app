import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;

  const ReusableCard({Key? key, required this.color, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMarginCard,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}
