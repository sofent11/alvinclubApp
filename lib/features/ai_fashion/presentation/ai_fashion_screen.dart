import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/ai_fashion_providers.dart';

class AiFashionScreen extends ConsumerStatefulWidget {
  const AiFashionScreen({super.key, required this.productImageUrl});

  final String productImageUrl;

  @override
  ConsumerState<AiFashionScreen> createState() => _AiFashionScreenState();
}

class _AiFashionScreenState extends ConsumerState<AiFashionScreen> {
  String? _selectedModelId;
  final Map<String, String> _selections = {};

  @override
  Widget build(BuildContext context) {
    final modelsAsync = ref.watch(aiModelsProvider);
    final optionsAsync = ref.watch(aiSelectionOptionsProvider);
    final controllerState = ref.watch(aiFashionControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('AI Fashion Try-on')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ThemedText('Selected Item', type: ThemedTextType.defaultSemiBold),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: widget.productImageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            const ThemedText('Select a Model', type: ThemedTextType.defaultSemiBold),
            const SizedBox(height: 12),
            _buildModelPicker(modelsAsync),
            const SizedBox(height: 24),
            const ThemedText('Customize Options', type: ThemedTextType.defaultSemiBold),
            const SizedBox(height: 12),
            _buildOptionsPicker(optionsAsync),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              child: ThemedButton(
                label: 'Generate Try-on',
                loading: controllerState.isLoading,
                onPressed: _selectedModelId != null ? _generate : null,
              ),
            ),
            if (controllerState.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(controllerState.error.toString(), style: const TextStyle(color: Colors.red)),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildModelPicker(AsyncValue<List<dynamic>> modelsAsync) {
    return modelsAsync.when(
      data: (models) => SizedBox(
        height: 120,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: models.length,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            final model = models[index];
            final isSelected = _selectedModelId == model.id;
            return GestureDetector(
              onTap: () => setState(() => _selectedModelId = model.id),
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected ? context.appColors.tint : Colors.grey[300]!,
                    width: isSelected ? 2 : 1,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(imageUrl: model.imageUrl, fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => Text('Error: $err'),
    );
  }

  Widget _buildOptionsPicker(AsyncValue<List<dynamic>> optionsAsync) {
    return optionsAsync.when(
      data: (options) => Column(
        children: options.map((opt) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(opt.key, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: opt.options.map<Widget>((item) {
                    final isSelected = _selections[opt.key] == item.value;
                    return ChoiceChip(
                      label: Text(item.label),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selections[opt.key] = item.value;
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        }).toList(),
      ),
      loading: () => const LinearProgressIndicator(),
      error: (err, _) => const SizedBox.shrink(),
    );
  }

  Future<void> _generate() async {
    await ref.read(aiFashionControllerProvider.notifier).generate(
      modelId: _selectedModelId!,
      productImageUrl: widget.productImageUrl,
      selections: _selections,
    );

    if (mounted && ref.read(aiFashionControllerProvider).hasValue) {
      final taskId = ref.read(aiFashionControllerProvider).value!;
      _showResultModal(taskId);
    }
  }

  void _showResultModal(String taskId) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => _AiFashionResultView(taskId: taskId),
    );
  }
}

class _AiFashionResultView extends ConsumerWidget {
  const _AiFashionResultView({required this.taskId});

  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultAsync = ref.watch(aiOutfitResultProvider(taskId));

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ThemedText('Your AI Result', type: ThemedTextType.subtitle),
          const SizedBox(height: 24),
          resultAsync.when(
            data: (result) {
              if (result.isSuccess && result.imageUrl != null) {
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(imageUrl: result.imageUrl!),
                    ),
                    const SizedBox(height: 24),
                    ThemedButton(label: 'Save & Share', onPressed: () {}),
                  ],
                );
              }
              if (result.status == 'FAILED') {
                return const Text('Generation failed. Please try again.');
              }
              return Column(
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text('Processing... Status: ${result.status}'),
                ],
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (err, _) => Text('Error: $err'),
          ),
          const SizedBox(height: 16),
          TextButton(onPressed: () => context.pop(), child: const Text('Close')),
        ],
      ),
    );
  }
}
