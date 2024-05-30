import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/app_providers.dart';

class SimpleProviderPage extends ConsumerWidget {
  const SimpleProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Provider'),
      ),
      body: Center(
        child: Text(ref.watch(titleProvider)),
      ),
    );
  }
}
