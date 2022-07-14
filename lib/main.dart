import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1D2136),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF1D2136),
            shadowColor: Color.fromARGB(255, 15, 17, 27),
          )),
      );
  }
}


