import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_playground/providers/app_providers.dart';

part 'posts_providers.g.dart';

@riverpod
FutureOr<String> academico(AcademicoRef ref) async {
  var response =
      await ref.watch(supabaseClientProvider).from('aca_posts').select('*');

  return response.toString();
}
