import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_playground/providers/quotes_provider.dart';

class QuotesPage extends ConsumerWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var quotes = ref.watch(quotesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
              child: Text(quote.quote),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(quotesProvider.notifier).add();
        },
        label: const Text('NOVA'),
      ),
    );
  }
}
