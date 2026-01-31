import 'package:flutter/material.dart';
import 'package:yogiface/Views/CoursesView/widgets/focus_area_circle.dart';

class FocusAreasList extends StatelessWidget {
  final List<Map<String, String>> focusAreas;
  final int selectedIndex;
  final ValueChanged<int> onAreaSelected;

  const FocusAreasList({
    super.key,
    required this.focusAreas,
    required this.selectedIndex,
    required this.onAreaSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: focusAreas.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final area = focusAreas[index];
          final isSelected = selectedIndex == index;
          return FocusAreaCircle(
            name: area['name']!,
            imagePath: area['image']!,
            isSelected: isSelected,
            onTap: () => onAreaSelected(index),
          );
        },
      ),
    );
  }
}
