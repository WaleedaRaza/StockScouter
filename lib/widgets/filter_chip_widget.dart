import 'package:flutter/material.dart';

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final Color? selectedColor;
  final Color? unselectedColor;

  const FilterChipWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.selectedColor,
    this.unselectedColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = isSelected
        ? (selectedColor ?? theme.colorScheme.primary)
        : (unselectedColor ?? theme.colorScheme.surface);
    final textColor = isSelected
        ? theme.colorScheme.onPrimary
        : theme.colorScheme.onSurface;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected
                ? (selectedColor ?? theme.colorScheme.primary)
                : theme.colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: textColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class MultiFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(bool) onChanged;
  final Color? selectedColor;

  const MultiFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onChanged,
    this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: onChanged,
      backgroundColor: theme.colorScheme.surface,
      selectedColor: selectedColor ?? theme.colorScheme.primary.withOpacity(0.2),
      checkmarkColor: selectedColor ?? theme.colorScheme.primary,
      labelStyle: TextStyle(
        color: isSelected
            ? (selectedColor ?? theme.colorScheme.primary)
            : theme.colorScheme.onSurface,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
      ),
      side: BorderSide(
        color: isSelected
            ? (selectedColor ?? theme.colorScheme.primary)
            : theme.colorScheme.outline.withOpacity(0.2),
      ),
    );
  }
}

class CategoryFilterChip extends StatelessWidget {
  final String category;
  final String? selectedCategory;
  final Function(String) onCategorySelected;
  final IconData? icon;

  const CategoryFilterChip({
    super.key,
    required this.category,
    this.selectedCategory,
    required this.onCategorySelected,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = category == selectedCategory;

    return GestureDetector(
      onTap: () => onCategorySelected(category),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected
              ? theme.colorScheme.primary
              : theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
                color: isSelected
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
            ],
            Text(
              category,
              style: theme.textTheme.bodySmall?.copyWith(
                color: isSelected
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurface,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 