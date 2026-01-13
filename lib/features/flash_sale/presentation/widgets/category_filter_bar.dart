import 'package:flutter/material.dart';
import '../../../../data/repositories/product_repository.dart';

class CategoryFilterBar extends StatelessWidget {
  const CategoryFilterBar({
    super.key,
    required this.categories,
    required this.selectedCategoryName,
    required this.onCategorySelected,
  });

  final List<CategoryItem> categories;
  final String? selectedCategoryName;
  final ValueChanged<String?> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: categories.length + 1, // +1 for "ALL"
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isAll = index == 0;
          final category = isAll ? null : categories[index - 1];
          final name = isAll ? 'ALL' : category?.name ?? '';
          // For logic, if isAll, value is null. Else value is name.
          final value = isAll ? null : name;

          final isSelected = selectedCategoryName == value;

          return GestureDetector(
            onTap: () => onCategorySelected(value),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFFD32F2F).withValues(alpha: 0.1)
                    : const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(20),
                border: isSelected
                    ? Border.all(color: const Color(0xFFD32F2F))
                    : Border.all(color: Colors.transparent),
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: isSelected ? const Color(0xFFD32F2F) : Colors.black87,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 13,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
