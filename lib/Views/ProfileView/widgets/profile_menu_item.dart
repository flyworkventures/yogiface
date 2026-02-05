import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class ProfileMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;
  final bool isToggled;
  final ValueChanged<bool>? onToggleChanged;
  final bool isHighlighted;
  final Color? iconBackgroundColor;
  final Color? backgroundColor;
  final bool isRed;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.isToggled = false,
    this.onToggleChanged,
    this.isHighlighted = false,
    this.isRed = false,
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
          color: isHighlighted
              ? const Color(0xFFFFFBEB)
              : isRed
                  ? AppColors.logoutBgRed
                  : backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: isHighlighted
              ? Border.all(color: const Color(0xFFFFD700), width: 2)
              : isRed
                  ? Border.all(color: AppColors.logoutBgRed, width: 2)
                  : Border.all(color: AppColors.onboardingGreyLight, width: 1),
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
                  color: iconBackgroundColor,
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
                  if (isHighlighted)
                    Text(
                      context.t.profile.manage,
                      style: AppTextStyles.latoBody(
                        12,
                        weight: FontWeight.w500,
                        color: Color(0xffEAB307),
                      ),
                    ),
                ],
              ),
            ),
            if (onToggleChanged != null)
              Switch(
                activeTrackColor: AppColors.onboardingButtonGradientStart,
                activeThumbColor: AppColors.backgroundLight,
                value: isToggled,
                onChanged: onToggleChanged,
              ),
            if (isRed || onToggleChanged == null)
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: isHighlighted ? Color(0xffEAB307) : Colors.grey,
              ),
          ],
        ),
      ),
    );
  }
}
