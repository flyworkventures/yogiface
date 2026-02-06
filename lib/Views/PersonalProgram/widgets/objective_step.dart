import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class ObjectiveStep extends StatelessWidget {
  final ValueNotifier<Set<String>> selectedObjectives;

  const ObjectiveStep({
    super.key,
    required this.selectedObjectives,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: AppSpacing.xxxl),
            Align(
              alignment: Alignment.center,
              child: Text(
                context.t.onboarding.whatIsMainObjective,
                style: AppTextStyles.onboardingBody(
                  24,
                  weight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Align(
              alignment: Alignment.center,
              child: Text(
                context.t.onboarding.shortBioDescription,
                textAlign: TextAlign.center,
                style: AppTextStyles.onboardingBody(
                  15,
                  height: 1.3,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            ...objectivesMap.entries.map((entry) {
              final objectiveKey = entry.key;

              final objectiveLabel = entry.value;

              return Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                child: CheckboxOption(
                  label: objectiveLabel,
                  isSelected: selectedObjectives.value.contains(objectiveKey),
                  showRadio: true,
                  showMoreButton: false,
                  onTap: () {
                    final newSet = Set<String>.from(selectedObjectives.value);
                    if (newSet.contains(objectiveKey)) {
                      newSet.remove(objectiveKey);
                    } else {
                      newSet.add(objectiveKey);
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
