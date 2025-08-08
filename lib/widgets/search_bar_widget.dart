import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onSearch;
  final Function()? onClear;
  final List<String>? suggestions;
  final bool showSuggestions;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onSearch,
    this.onClear,
    this.suggestions,
    this.showSuggestions = false,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool _isFocused = false;
  List<String> _filteredSuggestions = [];

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    if (widget.suggestions != null && widget.showSuggestions) {
      setState(() {
        _filteredSuggestions = widget.suggestions!
            .where((suggestion) => suggestion
                .toLowerCase()
                .contains(widget.controller.text.toLowerCase()))
            .take(5)
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isFocused
                  ? theme.colorScheme.primary
                  : theme.colorScheme.outline.withOpacity(0.2),
            ),
            boxShadow: _isFocused
                ? [
                    BoxShadow(
                      color: theme.colorScheme.primary.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Focus(
            onFocusChange: (hasFocus) {
              setState(() {
                _isFocused = hasFocus;
              });
            },
            child: TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: theme.colorScheme.onSurfaceVariant.withOpacity(0.6),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: _isFocused
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurfaceVariant,
                ),
                suffixIcon: widget.controller.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        onPressed: () {
                          widget.controller.clear();
                          widget.onClear?.call();
                          setState(() {
                            _filteredSuggestions.clear();
                          });
                        },
                      )
                    : null,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              onChanged: (value) {
                widget.onChanged?.call(value);
                _onTextChanged();
              },
              onSubmitted: (value) {
                widget.onSearch?.call(value);
                FocusScope.of(context).unfocus();
              },
              textInputAction: TextInputAction.search,
            ),
          ),
        ),
        // Suggestions
        if (_isFocused && _filteredSuggestions.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(top: 4),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: theme.colorScheme.outline.withOpacity(0.1),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: _filteredSuggestions.length,
              itemBuilder: (context, index) {
                final suggestion = _filteredSuggestions[index];
                return ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.search,
                    size: 16,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  title: Text(
                    suggestion,
                    style: theme.textTheme.bodyMedium,
                  ),
                  onTap: () {
                    widget.controller.text = suggestion;
                    widget.onSearch?.call(suggestion);
                    FocusScope.of(context).unfocus();
                    setState(() {
                      _filteredSuggestions.clear();
                    });
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}

class FilterSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onSearch;
  final List<String> filters;
  final String? selectedFilter;
  final Function(String)? onFilterChanged;

  const FilterSearchBar({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onSearch,
    required this.filters,
    this.selectedFilter,
    this.onFilterChanged,
  });

  @override
  State<FilterSearchBar> createState() => _FilterSearchBarState();
}

class _FilterSearchBarState extends State<FilterSearchBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        // Filter Chips
        if (widget.filters.isNotEmpty)
          Container(
            height: 40,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.filters.length,
              itemBuilder: (context, index) {
                final filter = widget.filters[index];
                final isSelected = filter == widget.selectedFilter;
                
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(filter),
                    selected: isSelected,
                    onSelected: (selected) {
                      widget.onFilterChanged?.call(filter);
                    },
                    backgroundColor: theme.colorScheme.surface,
                    selectedColor: theme.colorScheme.primary.withOpacity(0.2),
                    checkmarkColor: theme.colorScheme.primary,
                    labelStyle: TextStyle(
                      color: isSelected
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                    ),
                  ),
                );
              },
            ),
          ),
        // Search Bar
        SearchBarWidget(
          controller: widget.controller,
          hintText: widget.hintText,
          onChanged: widget.onChanged,
          onSearch: widget.onSearch,
        ),
      ],
    );
  }
} 