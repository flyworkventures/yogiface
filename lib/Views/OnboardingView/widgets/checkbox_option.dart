import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class CheckboxOption extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool showRadio;
  final bool showMoreButton;
  final VoidCallback? onMoreTap;

  const CheckboxOption({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.showRadio = false,
    this.showMoreButton = false,
    this.onMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 49,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? AppColors.onboardingButtonGradientEnd
                : AppColors.onboardingBackground,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: showRadio
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: AppTextStyles.onboardingBody(
                  14,
                  weight: FontWeight.w500,
                  height: 1,
                ),
              ),
              if (showRadio)
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.onboardingButtonGradientEnd
                          : AppColors.onboardingBackground,
                      width: 2,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.onboardingButtonGradientEnd,
                            ),
                          ),
                        )
                      : null,
                ),
              if (showMoreButton) ...[
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: onMoreTap,
                  child: Icon(
                    Icons.more_vert,
                    size: 20,
                    color: AppColors.onboardingGreyText,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
