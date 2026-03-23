import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:third_onboarding_screen/onboarding/data/onboarding_data.dart';

class BottomMenuWidget extends StatelessWidget {
  const BottomMenuWidget({
    super.key,
    required PageController pageController,
    required this.onSkipPress,
    required this.onNextPress,
    required this.onDotClicked,
    required this.isLastPage,
  }) : _pageController = pageController;

  final PageController _pageController;
  final VoidCallback onSkipPress, onNextPress;
  final Function(int) onDotClicked;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Skip Button
          TextButton(
            onPressed: onSkipPress,
            child: Text("Skip", style: TextStyle(color: Colors.orange)),
          ),

          /// Dot Indicator
          SmoothPageIndicator(
            controller: _pageController,
            count: onboardingData.length,
            onDotClicked: onDotClicked,
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

          /// Next Button
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: FilledButton(
              onPressed: onNextPress,
              style: FilledButton.styleFrom(backgroundColor: Colors.orange),
              child: Text(isLastPage ? "Get Started" : "Next"),
            ),
          ),
        ],
      ),
    );
  }
}
