import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final bool isPrimary;

  const CircleIcon(this.icon, {super.key, this.isPrimary = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Icon(
          icon,
          color: isPrimary
              ? AppColors.onboardingPurple
              : AppColors.onboardingGreyText,
          size: 24,
        ),
      ),
    );
  }
}
