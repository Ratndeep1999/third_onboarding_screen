import 'package:flutter/material.dart';

class OnboardingDataItemWidget extends StatelessWidget {
  const OnboardingDataItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });

  final String icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Icon
        Image(
          alignment: Alignment.center,
          image: AssetImage(icon),
          height: 300,
          width: 300,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 30),

        /// Title
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.orange,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: 30),

        /// Description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black26,
              fontSize: 22,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}
