import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/future_provider.dart';
import 'widgets/academico_posts_page.dart';

class AcademicoPage extends ConsumerWidget {
  const AcademicoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var posts = ref.watch(academicoPostProviderProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academico'),
      ),
      body: posts.when(
        data: (data) {
          return PostsPage(posts: data);
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(
              error.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
