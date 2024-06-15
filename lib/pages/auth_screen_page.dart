import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import 'home_page.dart';

class AuthUiPage extends ConsumerWidget {
  const AuthUiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SupaEmailAuth(
            onSignInComplete: (response) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePageProviders(),
                ),
              );
            },
            onSignUpComplete: (response) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePageProviders(),
                ),
              );
            },
            onError: (error) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(error.toString())));
            },
          )
        ],
      ),
    );
  }
}
