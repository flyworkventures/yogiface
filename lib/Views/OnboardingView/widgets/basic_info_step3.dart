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
    final objectives = [
      context.t.onboarding.reduceWrinkles,
      context.t.onboarding.tightenSkin,
      context.t.onboarding.liftDroopyEyelids,
      context.t.onboarding.eliminateDoubleChin,
      context.t.onboarding.brightenSkinTone,
      context.t.onboarding.allOfTheAbove,
    ];

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
            ...objectives.map((objective) => Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                  child: CheckboxOption(
                    label: objective,
                    isSelected: selectedObjectives.value.contains(objective),
                    onTap: () {
                      final newSet = Set<String>.from(selectedObjectives.value);
                      if (newSet.contains(objective)) {
                        newSet.remove(objective);
                      } else {
                        newSet.add(objective);
                      }
                      selectedObjectives.value = newSet;
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
