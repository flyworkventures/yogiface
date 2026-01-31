import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class TargetStep3 extends StatelessWidget {
  final ValueNotifier<String?> selectedSkinType;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const TargetStep3({
    super.key,
    required this.selectedSkinType,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final skinTypes = [
      context.t.onboarding.normal,
      context.t.onboarding.oily,
      context.t.onboarding.dry,
      context.t.onboarding.combination,
      context.t.onboarding.sensitive,
    ];

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.xl),

          // Text(
          //   context.t.onboarding.whatIsYourSkinType,
          //   style: AppTextStyles.heading(24, FontWeight.w700),
          // ),

          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.whatIsYourSkinType,
              style: AppTextStyles.onboardingBody(
                28,
                height: 1.3,
                weight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.shortBioDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                18,
                height: 1.3,
                weight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          ...skinTypes.map((type) => Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: CheckboxOption(
                      label: type,
                      isSelected: selectedSkinType.value == type,
                      onTap: () => selectedSkinType.value = type,
                    ),
                  ),
                ),
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
