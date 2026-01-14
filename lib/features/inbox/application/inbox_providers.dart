import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/inbox_repository.dart';
import '../domain/inbox_models.dart';

final inboxCategoriesProvider = FutureProvider<List<InboxCategory>>((
  ref,
) async {
  final repository = ref.watch(inboxRepositoryProvider);
  return repository.getInboxCategories();
});
