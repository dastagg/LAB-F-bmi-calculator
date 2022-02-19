import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 15.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  IconContent({required this.genderIcon, required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
