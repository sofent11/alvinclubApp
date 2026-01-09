import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../shared/widgets/themed_text.dart';
import '../../../data/repositories/ai_fashion_repository.dart';
import '../../../data/repositories/upload_repository.dart';
import '../application/ai_fashion_providers.dart';
import 'widgets/fashion_option_sheet.dart' as widgets;

class AiFashionScreen extends ConsumerStatefulWidget {
  const AiFashionScreen({
    super.key,
    required this.productImageUrl,
    this.taskId,
    this.templateId,
    this.modelId,
    this.prompt,
    this.modelImage,
    this.modelHeaderImg,
  });

  final String productImageUrl;
  final String? taskId;
  final String? templateId;
  final String? modelId;
  final String? prompt;
  final String? modelImage;
  final String? modelHeaderImg;

  @override
  ConsumerState<AiFashionScreen> createState() => _AiFashionScreenState();
}

class _AiFashionScreenState extends ConsumerState<AiFashionScreen> {
  // State
  FashionModel? _selectedModel;
  String? _uploadedPhoto;
  String? _localPhotoUri;
  bool _isUploading = false;

  // Inputs
  late TextEditingController _promptController;
  String _occasionText = '';
  String _vibeText = '';
  List<widgets.FashionOptionItem> _vibeSelections = [];

  @override
  void initState() {
    super.initState();
    _promptController = TextEditingController(text: widget.prompt ?? '');

    if (widget.modelId != null) {
      _selectedModel = FashionModel(
        id: '',
        modelId: widget.modelId!,
        imageUrl: widget.modelImage ?? '',
        headerImageUrl: widget.modelHeaderImg,
      );
    }
  }

  @override
  void dispose() {
    _promptController.dispose();
    super.dispose();
  }

  Future<void> _handlePickImage() async {
    final picker = ImagePicker();
    final result = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (result != null) {
      setState(() {
        _localPhotoUri = result.path;
        _uploadedPhoto = null;
        _isUploading = true;
      });

      try {
        final url = await ref
            .read(uploadRepositoryProvider)
            .uploadFile(result.path);
        setState(() => _uploadedPhoto = url);
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Upload Failed: $e')));
        }
        setState(() => _localPhotoUri = null);
      } finally {
        setState(() => _isUploading = false);
      }
    }
  }

  Future<void> _handleStartStyling() async {
    if (_isUploading) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please wait, photo is still uploading...'),
        ),
      );
      return;
    }

    if (_selectedModel == null && _localPhotoUri == null) {
      context.push(RoutePaths.fashionModelSettings);
      return;
    }

    if (_localPhotoUri != null && _uploadedPhoto == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Image upload failed or incomplete. Please try selecting the image again.',
          ),
        ),
      );
      return;
    }

    final selections = <String, String>{};
    if (_occasionText.isNotEmpty) {
      selections['occasion'] = _occasionText;
    }

    String? styleTrendyElements;
    final vibeSelection = _vibeSelections.isEmpty
        ? null
        : _vibeSelections.firstWhere(
            (v) => v.key == 'styleTrendyElements',
            orElse: () => const widgets.FashionOptionItem(label: '', value: ''),
          );
    if (vibeSelection != null && vibeSelection.value.isNotEmpty) {
      styleTrendyElements = vibeSelection.value;
    }

    await ref
        .read(aiFashionControllerProvider.notifier)
        .generate(
          modelId: _selectedModel?.modelId,
          productImageUrl:
              _uploadedPhoto, // In RN it uses referenceImages: uploadedPhoto ? [uploadedPhoto] : undefined
          customPrompt: _promptController.text,
          styleTrendyElements: styleTrendyElements,
          selections: selections,
        );

    if (mounted && ref.read(aiFashionControllerProvider).hasValue) {
      final taskId = ref.read(aiFashionControllerProvider).value!;
      context.push('${RoutePaths.fashionOutfitResult}?taskId=$taskId');
    }
  }

  void _showOccasionSheet(List<AiFashionSelectionOption> options) {
    final group = options.firstWhere(
      (o) => o.key.toLowerCase() == 'occasion',
      orElse: () =>
          const AiFashionSelectionOption(key: 'occasion', options: []),
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => widgets.FashionOptionSheet(
        title: 'Where are you going?',
        groups: [
          widgets.FashionOptionGroup(
            key: 'occasion',
            data: group.options
                .map(
                  (o) => widgets.FashionOptionItem(
                    label: o.label,
                    value: o.value,
                    key: 'occasion',
                  ),
                )
                .toList(),
          ),
        ],
        initialSelected: _occasionText.isNotEmpty
            ? [
                widgets.FashionOptionItem(
                  label: _occasionText,
                  value: '',
                  key: 'occasion',
                ),
              ]
            : [],
        onConfirm: (selected) {
          if (selected.isNotEmpty) {
            setState(() => _occasionText = selected.first.label);
          }
        },
      ),
    );
  }

  void _showVibeSheet(List<AiFashionSelectionOption> options) {
    final styleGroup = options.firstWhere(
      (o) => o.key == 'style',
      orElse: () => const AiFashionSelectionOption(key: 'style', options: []),
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => widgets.FashionOptionSheet(
        title: "What's the vibe?",
        groups: [
          widgets.FashionOptionGroup(
            key: 'styleTrendyElements',
            data: styleGroup.options
                .map(
                  (o) => widgets.FashionOptionItem(
                    label: o.label,
                    value: o.value,
                    key: 'styleTrendyElements',
                  ),
                )
                .toList(),
          ),
        ],
        initialSelected: _vibeSelections,
        onConfirm: (selected) {
          setState(() {
            _vibeSelections = selected;
            _vibeText = selected.isNotEmpty ? selected.first.label : '';
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final optionsAsync = ref.watch(aiSelectionOptionsProvider);
    final controllerState = ref.watch(aiFashionControllerProvider);

    // Load preset if available
    ref.listen(
      aiOutfitPresetProvider((
        taskId: widget.taskId,
        templateId: widget.templateId,
      )),
      (prev, next) {
        if (next.hasValue && next.value != null) {
          final preset = next.value!;
          if (preset.modelInfo != null && _selectedModel == null) {
            setState(() => _selectedModel = preset.modelInfo);
          }
          if (preset.referenceImages.isNotEmpty && _uploadedPhoto == null) {
            setState(() {
              _uploadedPhoto = preset.referenceImages.first;
              _localPhotoUri = preset.referenceImages.first;
            });
          }
          if (preset.prompt != null && _promptController.text.isEmpty) {
            _promptController.text = preset.prompt!;
          }
          if (preset.occasion != null && _occasionText.isEmpty) {
            setState(() => _occasionText = preset.occasion!);
          }
          if (preset.styleTrendyElements != null && _vibeText.isEmpty) {
            setState(() {
              _vibeText = preset.styleTrendyElements!;
              _vibeSelections = [
                widgets.FashionOptionItem(
                  label: preset.styleTrendyElements!,
                  value: preset.styleTrendyElements!,
                  key: 'styleTrendyElements',
                ),
              ];
            });
          }
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Style Me Today',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => context.push(RoutePaths.fashionHistory),
            icon: const Icon(Icons.history, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Card: Model + Photo + Prompt
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Model Selection
                  if (_selectedModel != null)
                    GestureDetector(
                      onTap: () =>
                          context.push(RoutePaths.fashionModelSettings),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedNetworkImage(
                              imageUrl:
                                  _selectedModel!.headerImageUrl ??
                                  _selectedModel!.imageUrl,
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            right: 4,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.refresh,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (_selectedModel != null) const SizedBox(width: 12),

                  // Photo Upload
                  GestureDetector(
                    onTap: _isUploading ? null : _handlePickImage,
                    child: _localPhotoUri != null
                        ? Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: _localPhotoUri!.startsWith('http')
                                    ? CachedNetworkImage(
                                        imageUrl: _localPhotoUri!,
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.file(
                                        File(_localPhotoUri!),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                              if (_isUploading)
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black.withValues(alpha: 0.3),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              else
                                Positioned(
                                  top: 4,
                                  right: 4,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _localPhotoUri = null;
                                        _uploadedPhoto = null;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withValues(alpha: 0.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Icon(
                                        Icons.close,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          )
                        : Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.image_outlined,
                              color: Color(0xFFFF6B6B),
                              size: 24,
                            ),
                          ),
                  ),
                  const SizedBox(width: 12),

                  // Prompt Input
                  Expanded(
                    child: TextField(
                      controller: _promptController,
                      maxLines: null,
                      decoration: const InputDecoration(
                        hintText: '描述你喜欢的时尚风格',
                        hintStyle: TextStyle(color: Color(0xFF999999)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Occasion Section
            ThemedText(
              'Where are you going?',
              type: ThemedTextType.defaultSemiBold,
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => optionsAsync.whenData(
                (options) => _showOccasionSheet(options),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _occasionText.isEmpty ? 'e.g, Party' : _occasionText,
                        style: TextStyle(
                          color: _occasionText.isEmpty
                              ? const Color(0xFF999999)
                              : Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFF666666),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Vibe Section
            ThemedText(
              "What's the vibe?",
              type: ThemedTextType.defaultSemiBold,
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () =>
                  optionsAsync.whenData((options) => _showVibeSheet(options)),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _vibeText.isEmpty ? 'e.g, classic casual' : _vibeText,
                        style: TextStyle(
                          color: _vibeText.isEmpty
                              ? const Color(0xFF999999)
                              : Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFF666666),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 48),

            // Footer
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controllerState.isLoading
                    ? null
                    : _handleStartStyling,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A1A1A),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  elevation: 0,
                ),
                child: controllerState.isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text(
                        'Create My Look',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),

            if (controllerState.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  controllerState.error.toString(),
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Result View (as a separate screen or modal result)
// Note: In RN, it navigates to /fashion/outfit-result
// For now I'll just keeping using the controller result if needed, but the router change handles navigation.
