import 'package:flutter/material.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import '../../../theme/app_colors.dart';

class PremiumPlanWidget extends StatelessWidget {
  const PremiumPlanWidget({super.key});

  void _showFeatureNotAvailableDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8A7F2).withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.lock_outline,
                    size: 32,
                    color: Color(0xFFE8A7F2),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Özellik Aktif Değil',
                  style: AppTextStyles.onboardingBody(
                    20,
                    weight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  'Bu özellik şu anda kullanıma açık değildir.',
                  style: AppTextStyles.onboardingBody(
                    14,
                    weight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                CustomButton(
                  label: 'Tamam',
                  fullWidth: true,
                  size: CustomButtonSize.small,
                  backgroundColor: const Color(0xFFE8A7F2),
                  labelColor: Colors.white,
                  labelStyle: AppTextStyles.onboardingBody(
                    14,
                    weight: FontWeight.w600,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFC9A8FF),
              Color(0xFFE8A7F2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        clipBehavior: Clip.none,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 0,
              bottom: 30,
              child: Image.asset(AppImages.premium),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Text('Premium Plan',
                    style: AppTextStyles.onboardingBody(
                      21,
                      weight: FontWeight.bold,
                      color: AppColors.backgroundLight,
                      letterSpacing: 0.5,
                    )),
                const SizedBox(height: 8),
                Text('Unlock your ai chatbot & get \nall premium features',
                    style: AppTextStyles.onboardingBody(
                      13,
                      weight: FontWeight.w500,
                      color: AppColors.backgroundLight,
                      height: 1.2,
                      letterSpacing: 0.5,
                    )),
                const SizedBox(height: 16),
                CustomButton(
                  label: 'Get Premium',
                  fullWidth: true,
                  size: CustomButtonSize.small,
                  backgroundColor: Colors.white,
                  icon: Image.asset(AppIcons.lightining, width: 24, height: 24),
                  labelColor: AppColors.onboardingButtonGradientEnd,
                  labelStyle: AppTextStyles.onboardingBody(
                    14,
                    weight: FontWeight.w500,
                    color: AppColors.onboardingButtonGradientEnd,
                  ),
                  onPressed: () {
                    _showFeatureNotAvailableDialog(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
