import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final FaIcon icon;
  final String title;
  final Color colorTitle;
  final Function onPressedButton;

  const IconContent(
      {Key? key,
      required this.icon,
      required this.title,
      required this.colorTitle,
      required this.onPressedButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: icon,
          iconSize: 70.0,
          onPressed: (){
            onPressedButton();
          },
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