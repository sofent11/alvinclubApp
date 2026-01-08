import 'dart:async';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/ai_fashion_repository.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../../../data/repositories/upload_repository.dart';
import '../application/ai_fashion_providers.dart';

class CustomModelScreen extends ConsumerStatefulWidget {
  const CustomModelScreen({super.key});

  @override
  ConsumerState<CustomModelScreen> createState() => _CustomModelScreenState();
}

class _CustomModelScreenState extends ConsumerState<CustomModelScreen> {
  File? _imageFile;
  String? _uploadedUrl;
  String _gender = 'female';
  BodyShapeItem? _selectedBodyShape;
  bool _isUploading = false;
  bool _isGenerating = false;
  String? _taskId;
  CustomModelStatus? _status;
  Timer? _pollingTimer;
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pollingTimer?.cancel();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        _isUploading = true;
      });

      try {
        final url = await ref
            .read(uploadRepositoryProvider)
            .uploadFile(pickedFile.path);
        setState(() {
          _uploadedUrl = url;
          _isUploading = false;
        });
      } catch (e) {
        setState(() => _isUploading = false);
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Upload failed: $e')));
        }
      }
    }
  }

  Future<void> _handleGenerate() async {
    if (_uploadedUrl == null || _selectedBodyShape == null) return;

    setState(() => _isGenerating = true);

    try {
      final repo = ref.read(aiFashionRepositoryProvider);
      final taskId = await repo.generateCustomModel(
        imageUrl: _uploadedUrl!,
        gender: _gender,
        age: _selectedBodyShape!.age,
        race: _selectedBodyShape!.race,
        body: _selectedBodyShape!.body,
        style: _selectedBodyShape!.style,
      );

      setState(() {
        _taskId = taskId;
        _isGenerating = true;
      });

      _startPolling(taskId);
    } catch (e) {
      setState(() => _isGenerating = false);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Generation failed: $e')));
      }
    }
  }

  void _startPolling(String taskId) {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 3), (timer) async {
      try {
        final repo = ref.read(aiFashionRepositoryProvider);
        final status = await repo.getCustomModelStatus(taskId);

        if (mounted) {
          setState(() => _status = status);
          if (status.isSuccess || status.status == 'FAILED') {
            timer.cancel();
            setState(() => _isGenerating = false);
          }
        }
      } catch (e) {
        timer.cancel();
        setState(() => _isGenerating = false);
      }
    });
  }

  Future<void> _handleSave() async {
    if (_taskId == null || _status == null || _status!.generatedModels.isEmpty)
      return;

    try {
      final repo = ref.read(aiFashionRepositoryProvider);
      await repo.saveCustomModel(
        taskId: _taskId!,
        selectedIndex: _status!.generatedModels[_selectedIndex].index,
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Model saved to library!')),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Failed to save model: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final bodyShapesAsync = ref.watch(bodyShapesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Create My Model')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ThemedText('Add Your Photo', type: ThemedTextType.subtitle),
            const Text(
              '建议上传面部照，再搭配身材',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 16),
            _buildUploadBox(),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ThemedText(
                  'Choose Your Body Type',
                  type: ThemedTextType.subtitle,
                ),
                _buildGenderToggle(),
              ],
            ),
            const SizedBox(height: 16),
            bodyShapesAsync.when(
              data: (shapes) => _buildBodyShapeGrid(shapes[_gender] ?? []),
              loading: () => const Center(child: LinearProgressIndicator()),
              error: (err, _) => Text('Error: $err'),
            ),
            if (_status != null || _isGenerating) ...[
              const SizedBox(height: 32),
              _buildResultSection(),
            ],
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _status?.isSuccess == true
              ? Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => setState(() {
                          _taskId = null;
                          _status = null;
                        }),
                        child: const Text('重新生成'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ThemedButton(label: '保存', onPressed: _handleSave),
                    ),
                  ],
                )
              : ThemedButton(
                  label: _isGenerating ? 'Creating...' : 'Create My Model',
                  loading: _isGenerating,
                  onPressed:
                      (_uploadedUrl != null && _selectedBodyShape != null)
                      ? _handleGenerate
                      : null,
                ),
        ),
      ),
    );
  }

  Widget _buildUploadBox() {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: _imageFile != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.file(
                      _imageFile!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    if (_isUploading)
                      Container(
                        color: Colors.black26,
                        child: const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        ),
                      ),
                  ],
                ),
              )
            : const Center(
                child: Icon(Icons.add_a_photo, size: 40, color: Colors.grey),
              ),
      ),
    );
  }

  Widget _buildGenderToggle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          _buildToggleBtn('female', 'Female'),
          _buildToggleBtn('male', 'Male'),
        ],
      ),
    );
  }

  Widget _buildToggleBtn(String value, String label) {
    final isActive = _gender == value;
    return GestureDetector(
      onTap: () => setState(() {
        _gender = value;
        _selectedBodyShape = null;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: isActive ? Colors.black87 : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.grey,
            fontSize: 12,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildBodyShapeGrid(List<BodyShapeItem> shapes) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.7,
      ),
      itemCount: shapes.length,
      itemBuilder: (context, index) {
        final item = shapes[index];
        final isSelected = _selectedBodyShape?.image == item.image;
        return GestureDetector(
          onTap: () => setState(() => _selectedBodyShape = item),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? context.appColors.tint : Colors.transparent,
                width: 2,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(imageUrl: item.image, fit: BoxFit.cover),
          ),
        );
      },
    );
  }

  Widget _buildResultSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ThemedText('Your Result', type: ThemedTextType.subtitle),
        const SizedBox(height: 16),
        if (_isGenerating &&
            (_status == null || _status!.generatedModels.isEmpty))
          const Center(
            child: Column(
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Generating your model...'),
              ],
            ),
          )
        else if (_status != null)
          _status!.isSuccess
              ? Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: PageView.builder(
                        itemCount: _status!.generatedModels.length,
                        onPageChanged: (index) =>
                            setState(() => _selectedIndex = index),
                        itemBuilder: (context, index) {
                          final model = _status!.generatedModels[index];
                          return Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: CachedNetworkImage(
                                imageUrl: model.url,
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _status!.generatedModels.length,
                        (index) => Container(
                          margin: const EdgeInsets.all(4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selectedIndex == index
                                ? Colors.black87
                                : Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Text(
                    _status!.status == 'FAILED'
                        ? 'Generation failed: ${_status!.error}'
                        : 'Processing...',
                  ),
                ),
      ],
    );
  }
}
