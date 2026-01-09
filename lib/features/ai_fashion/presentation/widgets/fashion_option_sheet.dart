import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/themed_text.dart';

class FashionOptionItem {
  const FashionOptionItem({
    required this.label,
    required this.value,
    this.key,
  });

  final String label;
  final String value;
  final String? key;
}

class FashionOptionGroup {
  const FashionOptionGroup({
    required this.key,
    this.title,
    required this.data,
  });

  final String key;
  final String? title;
  final List<FashionOptionItem> data;
}

class FashionOptionSheet extends StatefulWidget {
  const FashionOptionSheet({
    super.key,
    required this.title,
    required this.groups,
    this.initialSelected = const [],
    required this.onConfirm,
  });

  final String title;
  final List<FashionOptionGroup> groups;
  final List<FashionOptionItem> initialSelected;
  final Function(List<FashionOptionItem>) onConfirm;

  @override
  State<FashionOptionSheet> createState() => _FashionOptionSheetState();
}

class _FashionOptionSheetState extends State<FashionOptionSheet> {
  final List<FashionOptionItem> _selectedItems = [];

  @override
  void initState() {
    super.initState();
    _selectedItems.addAll(widget.initialSelected);
  }

  bool _isSelected(FashionOptionItem item) {
    return _selectedItems.any((i) => i.label == item.label && i.value == item.value);
  }

  void _toggleItem(FashionOptionItem item) {
    setState(() {
      if (_isSelected(item)) {
        _selectedItems.removeWhere((i) => i.label == item.label && i.value == item.value);
      } else {
        // For simplicity, let's assume single selection per group for now, 
        // to match RN occasionText and vibeText behavior.
        // If we want multi-selection, we'd need to handle it differently.
        _selectedItems.removeWhere((i) => i.key == item.key);
        _selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 16,
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ThemedText(widget.title, type: ThemedTextType.subtitle),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.groups.map((group) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (group.title != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ThemedText(group.title!, type: ThemedTextType.defaultSemiBold),
                        ),
                      Wrap(
                        spacing: 8,
                        runSpacing: 12,
                        children: group.data.map((item) {
                          final selected = _isSelected(item);
                          return GestureDetector(
                            onTap: () => _toggleItem(item),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: selected ? context.appColors.tint : Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: selected ? context.appColors.tint : Colors.transparent,
                                ),
                              ),
                              child: Text(
                                item.label,
                                style: TextStyle(
                                  color: selected ? Colors.white : Colors.black87,
                                  fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 24),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.onConfirm(_selectedItems);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
              ),
              child: const Text('Confirm', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
