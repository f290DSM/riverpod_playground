import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/providers/app_providers.dart';

import 'auth_screen_page.dart';
import 'home_page.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentSession = ref.read(supabaseClientProvider).auth.currentSession;
    return Scaffold(
      body: Center(
        child: currentSession == null
            ? const AuthUiPage()
            : const HomePageProviders(),
      ),
    );
  }
}
