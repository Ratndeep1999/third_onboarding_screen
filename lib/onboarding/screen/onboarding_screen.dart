import 'package:flutter/material.dart';
import 'package:third_onboarding_screen/utils/constants/app_texts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Icon
              Image(
                alignment: Alignment.center,
                image: AssetImage("assets/onboarding/onboarding_1.png"),
                height: 300,
                width: 300,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 30),

              /// Title
              Text(
                AppText.kOnBoardingTitle1,
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
              Text(
                AppText.kOnBoardingDesc1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
