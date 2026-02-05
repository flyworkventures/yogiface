import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class StepIndicatorWidget extends StatelessWidget {
  const StepIndicatorWidget({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.onboardingGreyLight,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            FractionallySizedBox(
              widthFactor: currentStep / totalSteps,
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.onboardingButtonGradientStart,
                      AppColors.onboardingButtonGradientEnd,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          context.t.facialScan.step(current: currentStep, total: totalSteps),
          style: AppTextStyles.body(
            12,
            weight: FontWeight.w600,
            color: AppColors.onboardingPurple,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
