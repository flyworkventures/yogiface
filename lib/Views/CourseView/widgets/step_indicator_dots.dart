import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';

class StepIndicatorDots extends StatelessWidget {
  const StepIndicatorDots({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  final int totalSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        final isCompleted = index < currentStep;
        final isCurrent = index == currentStep;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isCurrent ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: (isCompleted || isCurrent)
                ? const LinearGradient(
                    colors: [
                      AppColors.onboardingButtonGradientStart,
                      AppColors.onboardingButtonGradientEnd,
                    ],
                  )
                : null,
            color: (isCompleted || isCurrent)
                ? null
                : AppColors.onboardingGreyLight,
          ),
        );
      }),
    );
  }
}
