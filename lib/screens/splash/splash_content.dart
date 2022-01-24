import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "SPEAKUP",
          style: TextStyle(
            fontSize: 36,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionalScreenHeight(265),
          width: getProportionateScreenWith(235),
        )
      ],
    );
  }
}
