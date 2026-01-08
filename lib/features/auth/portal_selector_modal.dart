import 'package:flutter/material.dart';

import '../../core/portal/portals.dart';
import '../../core/theme/app_theme.dart';
import '../../shared/widgets/themed_text.dart';
import '../../shared/widgets/themed_view.dart';

class PortalSelectorModal extends StatelessWidget {
  const PortalSelectorModal({
    super.key,
    required this.visible,
    required this.onSelect,
    required this.onCancel,
  });

  final bool visible;
  final ValueChanged<Portal> onSelect;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return const SizedBox.shrink();
    }

    final colors = context.appColors;

    return Positioned.fill(
      child: Material(
        color: Colors.black54,
        child: SafeArea(
          child: GestureDetector(
            onTap: onCancel,
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 520,
                    maxHeight: MediaQuery.of(context).size.height * 0.8,
                  ),
                  child: ThemedView(
                    variant: ThemedViewVariant.card,
                    padding: EdgeInsets.zero,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const ThemedText('Select portal', type: ThemedTextType.subtitle),
                              IconButton(
                                onPressed: onCancel,
                                icon: Icon(Icons.close, color: colors.textMuted),
                              ),
                            ],
                          ),
                        ),
                        Divider(height: 1, color: colors.border),
                        Flexible(
                          child: ListView.separated(
                            itemCount: portals.length,
                            separatorBuilder: (_, _) => Divider(height: 1, color: colors.border),
                            itemBuilder: (context, index) {
                              final portal = portals[index];
                              return InkWell(
                                onTap: () => onSelect(portal),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 36,
                                        height: 36,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: colors.muted,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: ThemedText(
                                          portal.code,
                                          type: ThemedTextType.defaultSemiBold,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ThemedText(
                                              portal.name,
                                              type: ThemedTextType.defaultSemiBold,
                                            ),
                                            const SizedBox(height: 4),
                                            ThemedText(
                                              '${portal.code} - ${portal.currency}',
                                              style: TextStyle(color: colors.textMuted, fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
