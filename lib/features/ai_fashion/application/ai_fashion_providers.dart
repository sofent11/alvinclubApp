import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/ai_fashion_repository.dart';

final aiModelsProvider = FutureProvider.autoDispose<List<AiModel>>((ref) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getModels();
});

final aiSelectionOptionsProvider = FutureProvider.autoDispose<List<AiFashionSelectionOption>>((ref) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getSelectionOptions();
});

final aiOutfitResultProvider = StreamProvider.family.autoDispose<AiFashionGenerateResult, String>((ref, taskId) async* {
  final repo = ref.watch(aiFashionRepositoryProvider);
  
  while (true) {
    try {
      final result = await repo.getGenerationStatus(taskId);
      yield result;
      if (result.isTerminal) break;
    } catch (_) {
      // Ignore errors during polling
    }
    await Future.delayed(const Duration(seconds: 2));
  }
});

class AiFashionNotifier extends StateNotifier<AsyncValue<String>> {
  AiFashionNotifier(this._repository) : super(const AsyncValue.data(''));

  final AiFashionRepository _repository;

  Future<void> generate({
    String? modelId,
    String? productImageUrl,
    String? customPrompt,
    String? styleTrendyElements,
    Map<String, String>? selections,
  }) async {
    state = const AsyncValue.loading();
    try {
      final taskId = await _repository.initiateGeneration(
        modelId: modelId,
        productImageUrl: productImageUrl,
        customPrompt: customPrompt,
        styleTrendyElements: styleTrendyElements,
        selections: selections,
      );
      state = AsyncValue.data(taskId);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final aiFashionControllerProvider = StateNotifierProvider.autoDispose<AiFashionNotifier, AsyncValue<String>>((ref) {
  return AiFashionNotifier(ref.watch(aiFashionRepositoryProvider));
});

final aiFashionFeedProvider = FutureProvider.autoDispose<List<AiFashionPost>>((ref) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getFashionPosts();
});

final aiPostDetailProvider = FutureProvider.autoDispose.family<AiFashionPost?, String>((ref, postId) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getPostDetail(postId);
});

final aiFashionHistoryProvider = FutureProvider.autoDispose<List<AiFashionHistoryItem>>((ref) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getHistory();
});

final bodyShapesProvider = FutureProvider.autoDispose<Map<String, List<BodyShapeItem>>>((ref) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getBodyShapes();
});

final fashionModelsProvider = FutureProvider.autoDispose<List<FashionModelGroup>>((ref) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getFashionModels();
});

final customModelStatusProvider = FutureProvider.autoDispose.family<CustomModelStatus, String>((ref, modelId) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getCustomModelStatus(modelId);
});

final aiOutfitPresetProvider = FutureProvider.autoDispose.family<AiFashionPreset?, ({String? taskId, String? templateId})>((ref, arg) async {
  final repo = ref.watch(aiFashionRepositoryProvider);
  return repo.getOutfitPreset(taskId: arg.taskId, templateId: arg.templateId);
});
