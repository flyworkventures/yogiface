import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_border_radius.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class ChipButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ChipButton({
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
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.lg,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.transparent : Colors.transparent,
          border: Border.all(
            color: isSelected
                ? AppColors.onboardingButtonGradientEnd
                : AppColors.onboardingGrey,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: AppBorderRadius.pillRadius,
        ),
        child: Text(
          label,
          style: AppTextStyles.onboardingBody(
            14,
            color: isSelected
                ? AppColors.onboardingButtonGradientEnd
                : AppColors.black,
            weight: isSelected ? FontWeight.w600 : FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
