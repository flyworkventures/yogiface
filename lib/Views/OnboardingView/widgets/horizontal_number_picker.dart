import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class HorizontalNumberPicker extends HookWidget {
  final int min;
  final int max;
  final int selected;
  final ValueChanged<int> onChanged;

  const HorizontalNumberPicker({
    super.key,
    required this.min,
    required this.max,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(
      initialPage: selected - min,
      viewportFraction: 0.2,
    );

    useEffect(() {
      if (pageController.hasClients) {
        final targetPage = selected - min;
        if (pageController.page?.round() != targetPage) {
          pageController.animateToPage(
            targetPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      }
      return null;
    }, [selected]);

    return SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: AppSpacing.xs),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: max - min + 1,
              onPageChanged: (index) {
                final newValue = min + index;
                onChanged(newValue);
              },
              itemBuilder: (context, index) {
                final value = min + index;
                final isSelected = value == selected;
                final isNeighbor = (value - selected).abs() == 1;

                final double fontSize =
                    isSelected ? 40 : (isNeighbor ? 32 : 24);

                final Color color = isSelected
                    ? AppColors.onboardingButtonGradientEnd
                    : (isNeighbor
                        ? AppColors.black
                        : AppColors.sliderInactiveNumberColor);

                return Center(
                  child: Text(
                    value.toString(),
                    style: AppTextStyles.onboardingBody(
                      fontSize,
                      color: color,
                    ),
                  ),
                );
              },
            ),
          ),
          Image.asset(
            AppIcons.arrow,
            width: 24,
            height: 24,
            color: AppColors.onboardingButtonGradientEnd,
          ),
        ],
      ),
    );
  }
}
