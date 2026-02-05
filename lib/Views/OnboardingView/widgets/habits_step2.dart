import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class HabitsStep2 extends StatelessWidget {
  final ValueNotifier<String?> makeupFrequency;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const HabitsStep2({
    super.key,
    required this.makeupFrequency,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final frequenciesMap = {
      'every_day': context.t.onboarding.everyDay,
      'few_days_week': context.t.onboarding.fewDaysAWeek,
      'occasionally': context.t.onboarding.occasionally,
      'never': context.t.onboarding.never,
    };

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.xl),

          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.howOftenWearMakeup,
              style: AppTextStyles.onboardingBody(
                28,
                height: 1.3,
                weight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Text(
          //   context.t.onboarding.howOftenWearMakeup,
          //   style: AppTextStyles.heading(24, FontWeight.w700),
          // ),
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
          ...frequenciesMap.entries.map((entry) {
            final backendValue = entry.key;
            final displayLabel = entry.value;

            return Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xl),
              child: CheckboxOption(
                label: displayLabel,
                isSelected: makeupFrequency.value == backendValue,
                onTap: () => makeupFrequency.value = backendValue,
              ),
            );
          }),
          const Spacer(),
        ],
      ),
    );
  }
}
