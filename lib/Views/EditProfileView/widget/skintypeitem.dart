import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class SkinTypeItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;

  final Color? iconBackgroundColor;
  final Color? backgroundColor;

  const SkinTypeItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.isSelected = false,
    this.iconBackgroundColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.boxShadowColor,
              offset: Offset.zero,
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? AppColors.onboardingButtonGradientStart
                : AppColors.onboardingGreyLight,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconBackgroundColor?.withValues(alpha: 0.15) ??
                    const Color(0xFFE8E0F0),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  icon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.latoBody(
                      16,
                      weight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
