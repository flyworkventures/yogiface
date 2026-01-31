import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/theme/app_border_radius.dart';

class OptionButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppPaddings.md,
        decoration: BoxDecoration(
          color:
              isSelected ? AppColors.onboardingPurpleLight : Colors.transparent,
          border: Border.all(
            color: isSelected
                ? AppColors.onboardingPurple
                : AppColors.onboardingGrey,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: AppBorderRadius.mdRadius,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: AppTextStyles.body(
                  14,
                  color: isSelected
                      ? AppColors.onboardingPurple
                      : AppColors.onboardingGreyText,
                  weight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
