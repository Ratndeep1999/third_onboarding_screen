import 'package:flutter/material.dart';
import 'package:third_onboarding_screen/core/services/shared_pref_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: SharedPrefService.instance.clearOnboardingState,
            child: Text("Clear State"),
          ),
        ),
      ),
    );
  }
}
