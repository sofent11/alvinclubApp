import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/ai_fashion_repository.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/ai_fashion_providers.dart';

class ModelSettingsScreen extends ConsumerStatefulWidget {
  const ModelSettingsScreen({super.key});

  @override
  ConsumerState<ModelSettingsScreen> createState() =>
      _ModelSettingsScreenState();
}

class _ModelSettingsScreenState extends ConsumerState<ModelSettingsScreen> {
  String? _selectedModelId;

  void _handleDone(List<FashionModelGroup> groups) {
    if (_selectedModelId == null) return;

    FashionModel? selectedModel;
    for (final group in groups) {
      for (final model in group.models) {
        if (model.modelId == _selectedModelId) {
          selectedModel = model;
          break;
        }
      }
      if (selectedModel != null) break;
    }

    if (selectedModel != null) {
      context.pushReplacement(
        '${RoutePaths.fashionStyleMe}?modelId=${selectedModel.modelId}&modelImage=${Uri.encodeComponent(selectedModel.imageUrl)}&modelHeaderImg=${Uri.encodeComponent(selectedModel.headerImageUrl ?? '')}',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final modelsAsync = ref.watch(fashionModelsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Model Setup')),
      body: modelsAsync.when(
        data: (groups) {
          final userGroup = groups.firstWhere(
            (g) => g.groupId == 1,
            orElse: () => FashionModelGroup(
              groupId: 1,
              title: 'My Model Library',
              models: [],
            ),
          );
          final systemGroup = groups.firstWhere(
            (g) => g.groupId == 0,
            orElse: () => FashionModelGroup(
              groupId: 0,
              title: 'Model Library',
              models: [],
            ),
          );

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSection(
                        'My Model Library',
                        userGroup.models,
                        showCreate: true,
                      ),
                      const SizedBox(height: 32),
                      _buildSection('Model Library', systemGroup.models),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SafeArea(
                  child: ThemedButton(
                    label: 'Done',
                    onPressed: _selectedModelId != null
                        ? () => _handleDone(groups)
                        : null,
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildSection(
    String title,
    List<FashionModel> models, {
    bool showCreate = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemedText(title, type: ThemedTextType.subtitle),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.55,
          ),
          itemCount: models.length + (showCreate ? 1 : 0),
          itemBuilder: (context, index) {
            if (showCreate && index == 0) {
              return _buildCreateCard();
            }
            final model = models[showCreate ? index - 1 : index];
            return _buildModelCard(model);
          },
        ),
      ],
    );
  }

  Widget _buildCreateCard() {
    return GestureDetector(
      onTap: () => context.push(RoutePaths.fashionCustomModel),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 32, color: Colors.grey),
            SizedBox(height: 8),
            Text('自定义模特', style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildModelCard(FashionModel model) {
    final isSelected = _selectedModelId == model.modelId;
    return GestureDetector(
      onTap: () => setState(() => _selectedModelId = model.modelId),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? context.appColors.tint : Colors.transparent,
            width: 2,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: CachedNetworkImage(
          imageUrl: model.imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(color: Colors.grey[200]),
          errorWidget: (context, url, err) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
