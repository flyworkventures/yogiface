import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
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
    final objectives = [
      'Kırışıklıkları azalt',
      'Cildi sıklaştır',
      'Düşük göz kapaklarını toparla',
      'Gıdıyı yok et',
      'Cilt tonunu aydınlat',
      'Yukarıdakilerin hepsi',
    ];

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
                'What is the main objective?',
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
                'A short bio helps others know the real you.\nKeep it fun and genuine',
                textAlign: TextAlign.center,
                style: AppTextStyles.onboardingBody(
                  15,
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
                    showRadio: true,
                    showMoreButton: false,
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
