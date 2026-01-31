import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class OnboardingBottomBar extends StatelessWidget {
  final int currentStep;
  final bool isLoadingScreen;
  final bool isFinalScreen;
  final double loadingProgress;
  final bool canProceed;
  final VoidCallback onBack;
  final VoidCallback onNext;
  final VoidCallback onGetStarted;

  const OnboardingBottomBar({
    super.key,
    required this.currentStep,
    required this.isLoadingScreen,
    required this.isFinalScreen,
    required this.loadingProgress,
    required this.canProceed,
    required this.onBack,
    required this.onNext,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    // Loading screen - progress bar
    if (isLoadingScreen) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.t.onboarding.matchingPersonalities,
                style: AppTextStyles.onboardingBody(
                  13,
                  weight: FontWeight.w500,
                  color: AppColors.onboardingButtonGradientStart,
                ),
              ),
              Text(
                '${(loadingProgress * 100).toInt()}%',
                style: AppTextStyles.onboardingBody(
                  13,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: loadingProgress,
              minHeight: 12,
              backgroundColor: AppColors.onboardingGrey,
              valueColor: const AlwaysStoppedAnimation<Color>(
                AppColors.onboardingButtonGradientStart,
              ),
            ),
          ),
        ],
      );
    }

    // Final screen - Get Started button
    if (isFinalScreen) {
      return CustomButton(
        label: context.t.get_started,
        onPressed: onGetStarted,
        fullWidth: true,
        gradientColors: [
          AppColors.onboardingButtonGradientEnd,
          AppColors.onboardingButtonGradientStart,
        ],
      );
    }

    // Normal onboarding steps - Next/Back buttons
    return Row(
      children: [
        if (currentStep > 0)
          Expanded(
            child: CustomButton(
              borderRadius: 50,
              label: context.t.back,
              labelStyle: AppTextStyles.onboardingBody(
                18,
                weight: FontWeight.w600,
                color: AppColors.black,
              ),
              onPressed: onBack,
              backgroundColor: AppColors.onboardingBack,
              labelColor: Colors.black,
            ),
          ),
        if (currentStep > 0) const SizedBox(width: AppSpacing.md),
        Expanded(
          child: CustomButton(
            label: context.t.next,
            borderRadius: 50,
            labelStyle: AppTextStyles.onboardingBody(
              18,
              weight: FontWeight.w600,
              color: Colors.white,
            ),
            onPressed: onNext,
            disabled: !canProceed,
            fullWidth: true,
            gradientColors: [
              AppColors.onboardingButtonGradientEnd,
              AppColors.onboardingButtonGradientStart,
            ],
          ),
        ),
      ],
    );
  }
}
