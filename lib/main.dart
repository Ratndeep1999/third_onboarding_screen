import 'package:flutter/material.dart';
import 'core/app/app.dart';
import 'core/services/shared_pref_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Check onboarding status
  final isSeen = await SharedPrefService.instance.getOnboardingStatus();
  runApp(App(isSeen: isSeen));
}
