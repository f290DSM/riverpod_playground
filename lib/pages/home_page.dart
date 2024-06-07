import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/pages/academico_page.dart';
import 'package:riverpod_playground/pages/counter_page.dart';
import 'package:riverpod_playground/pages/quotes_page.dart';
import 'package:riverpod_playground/pages/simple_provider.dart';
import 'package:riverpod_playground/pages/widgets/custom_button.dart';

import '../providers/app_providers.dart';
import 'academico_home.dart';

class HomePageProviders extends ConsumerWidget {
  const HomePageProviders({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Providers'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeSwitchProvider.notifier).update((state) => !state);
            },
            icon: ref.watch(themeSwitchProvider)
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'Simple Provider',
              child: SimpleProviderPage(),
            ),
            CustomButton(
              title: 'Counter Provider',
              child: CounterPage(),
            ),
            // CustomButton(
            //   title: 'Future Provider',
            //   child: AcademicoPage(),
            // ),
            CustomButton(
              title: 'Home Page Academico',
              child: AcademicoHomePage(),
            ),
            CustomButton(
              title: 'Quotes Page',
              child: QuotesPage(),
            ),
          ],
        ),
      ),
    );
  }
}
