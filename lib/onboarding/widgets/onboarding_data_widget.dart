import 'package:flutter/material.dart';
import 'package:third_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:third_onboarding_screen/onboarding/widgets/onboarding_data_item_widget.dart';

class OnboardingDataWidget extends StatelessWidget {
  const OnboardingDataWidget({
    super.key,
    required this.pageIndex,
    required this.pageController,
    required this.onPageChanged,
  });

  final int pageIndex;
  final PageController pageController;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    /// Onboarding Data Builder Widget
    return PageView.builder(
      itemCount: onboardingData.length,
      onPageChanged: onPageChanged,
      controller: pageController,
      itemBuilder: (ctx, index) {
        final item = onboardingData[index];

        /// Onboarding Ui Data Widget
        return OnboardingDataItemWidget(
          icon: item.icon,
          title: item.title,
          desc: item.desc,
        );
      },
    );
  }
}
