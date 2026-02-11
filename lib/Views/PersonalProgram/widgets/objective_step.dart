import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class ObjectiveStep extends StatelessWidget {
  final ValueNotifier<String> selectedObjective;

  const ObjectiveStep({
    super.key,
    required this.selectedObjective,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, String> objectivesMap = {
      'tired': context.t.personalProgram.objectives.tired,
      'harsh': context.t.personalProgram.objectives.harsh,
      'pale': context.t.personalProgram.objectives.pale,
      'asymmetrical': context.t.personalProgram.objectives.asymmetrical,
      'general': context.t.personalProgram.objectives.general,
    };

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Text(
              context.t.personalProgram.objectiveTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                height: 1.2,
                24,
                weight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              context.t.personalProgram.objectiveSubtitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(14,
                  height: 1, weight: FontWeight.w400),
            ),
            const SizedBox(height: AppSpacing.xl),
            ...objectivesMap.entries.map((entry) {
              final objectiveKey = entry.key;
              final objectiveLabel = entry.value;

              return Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                child: ValueListenableBuilder<String>(
                  valueListenable: selectedObjective,
                  builder: (context, value, child) {
                    return CheckboxOption(
                      label: objectiveLabel,
                      isSelected: value == objectiveKey,
                      showRadio: true,
                      onTap: () {
                        selectedObjective.value = objectiveKey;
                      },
                    );
                  },
                ),
              );
            }),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
