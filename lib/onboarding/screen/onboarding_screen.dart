import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:third_onboarding_screen/onboarding/data/onboarding_data.dart';
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
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Skip Button
            TextButton(onPressed: () {}, child: Text("Skip")),

            /// Dot Indicator
            SmoothPageIndicator(
              controller: _pageController,
              count: onboardingData.length,
              onDotClicked: (index) => debugPrint("Index: $index"),
              effect: const SwapEffect(
                type: SwapType.yRotation,
                dotHeight: 16,
                dotWidth: 16,
                activeDotColor: Colors.orange,
                dotColor: Colors.black12,
                radius: 5.0,
                spacing: 16,
                strokeWidth: 2.0,
              ),
            ),

            /// Button
            FilledButton(onPressed: () {}, child: Text("Next")),
          ],
        ),
      ),
      body: OnboardingDataWidget(
        pageIndex: _pageIndex,
        pageController: _pageController,
        onPageChanged: (index) => debugPrint("Index: $index"),
      ),
    );
  }
}
