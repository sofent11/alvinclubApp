import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/ai_fashion_providers.dart';

class OutfitResultScreen extends ConsumerStatefulWidget {
  const OutfitResultScreen({super.key, required this.taskId});

  final String taskId;

  @override
  ConsumerState<OutfitResultScreen> createState() => _OutfitResultScreenState();
}

class _OutfitResultScreenState extends ConsumerState<OutfitResultScreen> {
  String? _zoomedImage;

  @override
  Widget build(BuildContext context) {
    final presetAsync = ref.watch(
      aiOutfitPresetProvider((taskId: widget.taskId, templateId: null)),
    );
    final resultAsync = ref.watch(aiOutfitResultProvider(widget.taskId));

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'Styled Looks',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => context.pop(),
            ),
          ),
          body: resultAsync.when(
            data: (result) {
              if (result.status == 'FAILED') {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 60,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Generation Failed',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: () => ref.invalidate(
                          aiOutfitResultProvider(widget.taskId),
                        ),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              }

              final isGenerating = !result.isTerminal;
              final images = result.imageUrl != null
                  ? [result.imageUrl!]
                  : <String>[];

              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Preset Info
                    presetAsync.when(
                      data: (preset) {
                        if (preset == null) return const SizedBox.shrink();
                        return Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (preset.modelInfo != null)
                                    _buildPresetImageCard(
                                      preset.modelInfo!.imageUrl,
                                      'Model',
                                    ),
                                  if (preset.modelInfo != null &&
                                      preset.referenceImages.isNotEmpty)
                                    const SizedBox(width: 16),
                                  if (preset.referenceImages.isNotEmpty)
                                    _buildPresetImageCard(
                                      preset.referenceImages.first,
                                      'Ref',
                                    ),
                                ],
                              ),
                              if (preset.prompt != null) ...[
                                const SizedBox(height: 12),
                                Text(
                                  preset.prompt!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ],
                          ),
                        );
                      },
                      loading: () => const SizedBox.shrink(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),

                    const SizedBox(height: 24),

                    if (isGenerating)
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 48),
                            const _FlyingClothesAnimation(),
                            const SizedBox(height: 24),
                            ThemedText(
                              'Creating your look...',
                              type: ThemedTextType.subtitle,
                            ),
                            const SizedBox(height: 48),
                          ],
                        ),
                      )
                    else
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.75,
                            ),
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () =>
                                setState(() => _zoomedImage = images[index]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                imageUrl: images[index],
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    Container(color: Colors.grey[200]),
                              ),
                            ),
                          );
                        },
                      ),

                    if (!isGenerating && images.isNotEmpty)
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Downloading all photos to gallery...',
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            'Download all photos',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                    const SizedBox(height: 100),
                  ],
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, _) => Center(child: Text('Error: $err')),
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => context.go(RoutePaths.home),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100],
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        elevation: 0,
                      ),
                      child: const Text('Home'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () => context.pushReplacement(
                        '${RoutePaths.fashionStyleMe}?taskId=${widget.taskId}',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.appColors.tint,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        '重新为我造型',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_zoomedImage != null)
          Positioned.fill(
            child: GestureDetector(
              onTap: () => setState(() => _zoomedImage = null),
              child: Container(
                color: Colors.black.withOpacity(0.9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () => setState(() => _zoomedImage = null),
                      ),
                    ),
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl: _zoomedImage!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildPresetImageCard(String url, String label) {
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: url,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FlyingClothesAnimation extends StatefulWidget {
  const _FlyingClothesAnimation();

  @override
  State<_FlyingClothesAnimation> createState() =>
      _FlyingClothesAnimationState();
}

class _FlyingClothesAnimationState extends State<_FlyingClothesAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tintColor = Theme.of(context).primaryColor;
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildPerson(tintColor),
          _buildFlyingItem(
            Icons.check_box_outline_blank,
            const Offset(-100, -100),
            0.0,
            tintColor,
          ),
          _buildFlyingItem(
            Icons.visibility_outlined,
            const Offset(100, -80),
            0.3,
            tintColor,
          ),
          _buildFlyingItem(
            Icons.watch_outlined,
            const Offset(-80, 100),
            0.6,
            tintColor,
          ),
          _buildFlyingItem(
            Icons.shopping_bag_outlined,
            const Offset(100, 100),
            0.9,
            tintColor,
          ),
        ],
      ),
    );
  }

  Widget _buildPerson(Color color) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final scale =
            1.0 +
            0.1 * (Curves.easeInOut.transform((_controller.value * 2) % 1.0));
        return Transform.scale(
          scale: scale,
          child: Opacity(
            opacity:
                0.5 +
                0.5 *
                    (Curves.easeInOut.transform((_controller.value * 2) % 1.0)),
            child: Icon(Icons.person, size: 80, color: color),
          ),
        );
      },
    );
  }

  Widget _buildFlyingItem(
    IconData icon,
    Offset startPos,
    double delay,
    Color color,
  ) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double progress = (_controller.value + delay) % 1.0;
        final x = startPos.dx * (1.0 - progress);
        final y = startPos.dy * (1.0 - progress);
        final scale = 1.0 - 0.5 * progress;
        final opacity = 1.0 - progress;

        return Transform.translate(
          offset: Offset(x, y),
          child: Transform.scale(
            scale: scale,
            child: Opacity(
              opacity: opacity,
              child: Icon(icon, size: 24, color: color),
            ),
          ),
        );
      },
    );
  }
}
