import 'package:flutter/material.dart';
import 'package:yogiface/Views/OnboardingView/widgets/checkbox_option.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class HabitsStep1 extends StatelessWidget {
  final ValueNotifier<Set<String>> selectedConcerns;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const HabitsStep1({
    super.key,
    required this.selectedConcerns,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final concerns = [
      context.t.onboarding.acneAndPimples,
      context.t.onboarding.redness,
      context.t.onboarding.swelling,
      context.t.onboarding.wrinkles,
      context.t.onboarding.neckLines,
    ];

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   context.t.onboarding.whichOfThemDoYouHave,
          //   style: AppTextStyles.heading(24, FontWeight.w700),
          // ),
          const SizedBox(height: AppSpacing.xl),

          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.whichOfThemDoYouHave,
              style: AppTextStyles.onboardingBody(
                28,
                height: 1.3,
                weight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          // Text(
          //   context.t.onboarding.shortBioDescription,
          //   style: AppTextStyles.body(14, color: AppColors.onboardingGreyText),
          // ),
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
          ...concerns.map((concern) => Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                child: CheckboxOption(
                  label: concern,
                  isSelected: selectedConcerns.value.contains(concern),
                  onTap: () {
                    final newSet = Set<String>.from(selectedConcerns.value);
                    if (newSet.contains(concern)) {
                      newSet.remove(concern);
                    } else {
                      newSet.add(concern);
                    }
                    selectedConcerns.value = newSet;
                  },
                ),
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
