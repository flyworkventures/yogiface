import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

import '../../../theme/app_colors.dart';

class PremiumPlanWidget extends StatelessWidget {
  const PremiumPlanWidget({super.key});

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
                Text(context.t.home.premiumPlan.title,
                    style: AppTextStyles.onboardingBody(
                      21,
                      weight: FontWeight.bold,
                      color: AppColors.backgroundLight,
                      letterSpacing: 0.5,
                    )),
                const SizedBox(height: 8),
                Text(context.t.home.premiumPlan.description,
                    style: AppTextStyles.onboardingBody(
                      13,
                      weight: FontWeight.w500,
                      color: AppColors.backgroundLight,
                      height: 1.2,
                      letterSpacing: 0.5,
                    )),
                const SizedBox(height: 16),
                CustomButton(
                  label: context.t.home.premiumPlan.button,
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
                  onPressed: () async {
                    final offerings = await Purchases.getOfferings();

                    Print.info(offerings.toString(), tag: 'PremiumPlanWidget');
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
