import 'package:flutter/material.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import '../../../theme/app_colors.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Actions',
            style: AppTextStyles.onboardingBody(
              16,
              weight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 150,
            padding: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: AppColors.boxShadowColor,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      AppImages.quikactionimage,
                      height: 143,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 16,
                    bottom: 16,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your Personal Program',
                              style: AppTextStyles.onboardingBody(
                                16,
                                letterSpacing: 0.5,
                                height: 0.5,
                                weight: FontWeight.w600,
                                color: Colors.black,
                              )),
                          const SizedBox(height: 10),
                          Text(
                            'For your best look\nin 30 days',
                            style: AppTextStyles.onboardingBody(
                              16,
                              letterSpacing: -0.3,
                              height: 1,
                              weight: FontWeight.w600,
                              color: AppColors.onboardingButtonGradientStart,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/personal-program');
                        },
                        label: 'Get Started',
                        size: CustomButtonSize.small,
                        fullWidth: true,
                        gradientColors: [
                          AppColors.onboardingButtonGradientEnd,
                          AppColors.onboardingButtonGradientStart,
                        ],
                        labelColor: Colors.white,
                        labelStyle: AppTextStyles.onboardingBody(
                          13,
                          weight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
