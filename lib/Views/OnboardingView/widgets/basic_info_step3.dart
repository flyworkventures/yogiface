import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

import 'checkbox_option.dart';

class BasicInfoStep3 extends StatelessWidget {
  final ValueNotifier<Set<String>> selectedObjectives;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const BasicInfoStep3({
    super.key,
    required this.selectedObjectives,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final objectivesMap = {
      'reduce_wrinkles': context.t.onboarding.reduceWrinkles,
      'tighten_skin': context.t.onboarding.tightenSkin,
      'lift_eyelids': context.t.onboarding.liftDroopyEyelids,
      'eliminate_double_chin': context.t.onboarding.eliminateDoubleChin,
      'brighten_tone': context.t.onboarding.brightenSkinTone,
      'all': context.t.onboarding.allOfTheAbove,
    };

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.xl),
            Align(
              alignment: Alignment.center,
              child: Text(
                context.t.onboarding.whatIsMainObjective,
                textAlign: TextAlign.center,
                style: AppTextStyles.onboardingBody(
                  24,
                  weight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
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
            ...objectivesMap.entries.map((entry) {
              final backendValue = entry.key;
              final displayLabel = entry.value;

              return Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                child: CheckboxOption(
                  label: displayLabel,
                  isSelected: selectedObjectives.value.contains(backendValue),
                  onTap: () {
                    final newSet = Set<String>.from(selectedObjectives.value);
                    if (newSet.contains(backendValue)) {
                      newSet.remove(backendValue);
                    } else {
                      newSet.add(backendValue);
                    }
                    selectedObjectives.value = newSet;
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
