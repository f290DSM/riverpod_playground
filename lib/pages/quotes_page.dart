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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
                  child: Text(
                    quote.id.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Text(
                    quote.quote,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 20),
                  child: Text(
                    quote.author,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
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
