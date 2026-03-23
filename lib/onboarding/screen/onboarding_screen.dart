import 'package:flutter/material.dart';
import 'package:third_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:third_onboarding_screen/onboarding/widgets/bottom_menu_widget.dart';
import 'package:third_onboarding_screen/onboarding/widgets/onboarding_data_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Bottom Menu Widget (Skip, Dot Indicator and Next)
      bottomSheet: BottomMenuWidget(
        pageController: _pageController,
        onSkipPress: onSkipPress,
        onNextPress: () => debugPrint("Next"),
        onDotClicked: (index) => debugPrint("Index: $index"),
        isLastPage: ((_pageIndex + 1) == onboardingData.length),
      ),

      /// Onboarding Data Widget
      body: OnboardingDataWidget(
        pageIndex: _pageIndex,
        pageController: _pageController,
        onPageChanged: (index) => setState(() => _pageIndex = index),
      ),
    );
  }

  /// Skip Press
  void onSkipPress() {
    _pageController.animateToPage(
      onboardingData.length - 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
