import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class GenderButton extends StatelessWidget {
  final String label;
  final String? iconPath;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderButton({
    super.key,
    required this.label,
    this.iconPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.md,
          horizontal: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          // color:
          //     isSelected ? Colors.transparent : AppColors.onboardingBackground,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: isSelected
                  ? [
                      AppColors.onboardingButtonGradientStart,
                      AppColors.onboardingButtonGradientEnd,
                    ]
                  : [
                      AppColors.onboardingBackground,
                      AppColors.onboardingBackground,
                    ]),
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null)
              Image.asset(
                iconPath!,
                width: 40,
                height: 40,
                color: Colors.white,
              )
            else
              SizedBox.shrink(),
            const SizedBox(height: AppSpacing.xs),
            Text(
              label,
              style: AppTextStyles.onboardingBody(
                16,
                color: Colors.white,
                weight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
